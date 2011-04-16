class User < ActiveRecord::Base
  belongs_to :client

  #return true if this model exists in the db with same
  #client_id, username and password
  def self.exists?(user)
     User.where(:username => user.username,:client_id => user.client_id).first
  end

end
