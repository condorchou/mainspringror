class CreateSuperUser < ActiveRecord::Migration
  def self.up
    c = Client.create!(:company_name => 'Super', :token => 'super')
    User.create!(:email => 'superuser@superuser.com', :username => 'super_user', :role => 'super_user',
     :password => 'super_user', :client_user_id => 'user', :client_id => c.id, :location => 'Los Angeles, CA')
    
    c2 = Client.create!(:company_name => 'Belsobeer', :token => 'belsobeer', :botr_player_key => 'XvtkGMKx')
    joy = User.create!(:email => 'joy@belsobeer.com', :username => 'Joy McDee', :role => 'client_admin',
     :password => 'password', :client_user_id => 'joy@belsobeer.com', :client_id => c2.id, :location => "Los Angeles, CA")
    
    intranet_user = c2.users.create(:email => 'bob@belosbeer.com', :username => 'bob the builder', :role => 'intranet_user',
    :client_user_id => 'bob@belsobeer.com', :location => "San Francisco, CA")

    v1 = c2.videos.create(:title => "Massage, Yay!", :botr_video_key => "2tqV87h7", :user_id => joy.id)
    
    v2 = c2.videos.create(:title => "Incomplete Video", :user_id => joy.id)
    
    v1.comments.create(:user_id => joy.id, :body => "this is my first comment")
    v1.comments.create(:user_id => intranet_user.id, :body => 'this is a lame comment as well')
     
  end

  def self.down
  end
end
