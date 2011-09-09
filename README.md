Mainspringror project - multiclient CMS for managing videos, users, comments, ratings using Bits on the Run (botr) as video upload/convert/player/thumbnails.
Provides a method for clients to quickly integrate externally hosted you-tube like video page, privately from within their intranet.
====
Getting Started

  rake db:migrate to create tables, super_user and sample client, with one sample client_admin

goto /login to login as super_user (authentication token is super_user, password is also super_user)
as a super_user you are directed to /clients after you login, from there you can create, edit, delete clients.
click on logout link or visit /logout to logout.

login as sample client using authentication_token: belsobeer_joy@belsobeer.com, password is password.
as a client_admin you are redirected to the client show page.  You cannot access the list of clients at /clients/.
You can manage belsobeer's users or videos, but cannot accesses other clients content.

=====

Creating Clients

If you are a super_user you can access /clients/new to create a new client.  A unique ID called a 'handle' is automatically
created based on the lowercased company name with all non alpha numeric characters converted to an underscore. 

The client will require a botr player key which is first created on bits on the run and paste the code into the client
record.  All videos for this client will use this botr player.

=====
Creating Users

Users belong to a client.  Goto clients/:client_id/users/new to create a new user.
Each user MUST have a globally (across all clients) unique authentication_token, this is created automatically
by concatenating the client handle and the user's client_user_id (which is the user ID the client has assigned him or her).
The user's client_user_id is unique within that client scope, it can be an email or other unique user ID.

Users use their authentication_token to login.

====
Video creation takes 2 steps:
1) Create the DB record - 
  a) clients/client_id/videos/new
  b) upon submit and record is created you will be redirected to ...
2) Upload the video to botr
  a) clients/client_id/videos/upload_form
  b) select file from your computer and click submit, wait for success msg
====

Authentication and Authorization using Devise and CanCan gems

set user roles in models/abilities.rb

super_admin - can manage all resources including adding or deleting clients
client_admin - client admin, can modify client record, manage users and videos
intranet_user - typical intranet user that just looks at videos, can comment, can rate

====

Content Assets

Templates that are stored in the DB.  Evaluated as erb.  Can be used to render misc client static content related
to videos, such as a policy page.

====


Rating
used https://github.com/josei/acts_as_rateable
TODO add ajax methods for rating a video

====
Tagging
git://github.com/jviney/acts_as_taggable_on_steroids.git



