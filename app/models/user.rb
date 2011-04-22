class User < ActiveRecord::Base
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
