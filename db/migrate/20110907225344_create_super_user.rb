class CreateSuperUser < ActiveRecord::Migration
  def self.up
    c = Client.create!(:company_name => 'Super', :token => 'super')
    User.create!(:email => 'superuser@superuser.com', :username => 'super_user', :role => 'super_user',
     :password => 'super_user', :client_user_id => 'user', :client_id => c.id, :location => 'Los Angeles, CA')
    c2 = Client.create!(:company_name => 'Belsobeer', :token => 'belsobeer')
    User.create!(:email => 'joy@belsobeer.com', :username => 'Joy McDee', :role => 'client_admin',
     :password => 'password', :client_user_id => 'joy@belsobeer.com', :client_id => c2.id)

  end

  def self.down
  end
end
