Given /^a client Elsevier, a video Awesome Video and a User 'Mr\. Cool'$/ do
  @client = Client.create(:company_name => 'Elsevier', :intranet => 'http://nonsolus.com', :botr_player_key => 'ABC')
  @user = @client.users.create(:username => 'Mr. Cool', :location => 'Los Angeles, CA')
  @video = @client.videos.create(:title => 'Awesome Video', :user_id => @user.id)
end

When /^I login as Mr\. Cool$/ do
  visit login_client_users_path(@client)
  fill_in "user[username]", :with => 'Mr. Cool'
  click_button "Login"
end

Then /^I should be redirected to clients_videos page$/ do
  page.should have_content("Awesome Video")
end

When /^I implicitly login as Mr\. Cool$/ do
  visit intranet_login_client_users_path(@client, :username => 'Mr. Cool', :location => 'Los Angeles, CA')
end

Then /^I should be redirected to the show Awesome Video page$/ do
  page.should have_content("Awesome Video")
end

When /^I implicitly login without credentials$/ do
  visit intranet_login_client_users_path(@client)
end

Then /^I should see an error page$/ do
  page.should have_content("username required")
end

