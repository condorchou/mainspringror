class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
          :trackable, :token_authenticatable  #, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :authentication_token, :username, :role, :client_user_id, :client_id, :location
  
  validates_numericality_of :client_id

  validates_presence_of :client_user_id
  validates_uniqueness_of :client_user_id, :scope => :client_id


  before_save :set_authentication_token

  def set_authentication_token
    c = Client.find(self.client_id)
    if c.nil?
      errors.add(:client_id, 'invalid')
    end
    self.authentication_token = c.handle + '_' + self.client_user_id.downcase.gsub(/[^a-z0-9\@\-\_\.]/,'_')
  end

  belongs_to :client
  has_many :videos
  
  
   
  #return true if this model exists in the db with same
  #client_id, username and password
  def self.exists?(user)
    User.where(:username => user.username,:client_id => user.client_id).first
  end

  def self.intranet_login(params)
    errors = []
    errors << "location required" if params[:location].blank?
    errors << "username required" if params[:username].blank?
    errors << "token required" if params[:token].blank?
    return [errors, nil] if errors.size > 0

    client = Client.where(:token => params[:token]).first
    if client.nil?
      errors << "invalid token"
      return errors, nil
    end
     
    #TODO verify referer 
    #unless params[:referer].to_s.match(Regexp.new(client.referer_should_match.to_s))
    #  errors << "unknown referer '#{params[:referer]}'"
    #  return errors, nil
    #end

    #look for existing user under this client and return it, otherwise create a new one
    user = client.users.where(:username => params[:username], :location => params[:location]).first
    user = client.users.create(:username => params[:username], :location => params[:location], :role => 'intranet_user') if user.nil?
    return errors, user
  end
  
end
