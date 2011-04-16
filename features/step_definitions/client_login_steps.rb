Given /^a client Elsevier, a video Awesome Video and a User 'Mr\. Cool'$/ do
  @client = Client.create(:company_name => 'Elsevier', :intranet => 'http://nonsolus.com', :botr_player_key => 'ABC')
  @user = @client.users.create(:username => 'Mr. Cool', :location => 'Los Angeles, CA')
  @video = @client.videos.create(:title => 'Awesome Video', :user_id => @user.id)
end

When /^I login as Mr\. Cool$/ do
  visit login_client_users_path(@client.id)
end

Then /^I should be redirected to clients_videos page$/ do
  pending # express the regexp above with the code you wish you had
end



