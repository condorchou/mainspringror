Mainspringror project - multiclient CMS for managing videos, users, comments, ratings

====
rake db:migrate to create tables, super_user and sample client, with one sample client_admin
====
goto /login to login as super_user (password is also super_user)
as a super_user you are directed to /clients after you login, from there you can create, edit, delete clients.
click on logout link or visit /logout to logout.

login as sample client using authentication_token: belsobeer_joy@belsobeer.com, password is password.
as a client_admin you are redirected to the client show page.  You cannot access the list of clients at /clients/.
You can manage users or videos, but cannot accesses other clients content.

====

Restful resources for CRUD operations on clients, their videos and their users with predictable urls.

See all clients at /clients
Manage clients videos at clients/:client_id/videos
Manage clients users at clients/:client_id/users
show video at clients/:client_id/videos/:video_id
videos have comments at clients/:client_id/videos/:video_id/comments
create video at clients/:client_id/videos/ (via post)
see config/routes.rb
====

Security:

Access to the CMS is forbidden without session authentication or token authentication
Once logged in, no user can access resources of another client (except superuser)
User's login with a login page using authentication_token (made of client handle and user unique id) and password
User's cannot be created using signup unless they have permission to create users
A default superuser is created, modify after first migration.  Use it to create other
clients, and or users.

====

Authentication and Authorization using Devise and CanCan 

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


====
TODO
Video Uploading


Clients integrate video CMS in their intranet:

clients install jQuery and our plugin within their intranet
invoking our plugin does 2 things:
  creates a user with a token based on client_id, username, location
  accesses a resource via the token and retrives html content
  injects content into the DOM including CSS stylesheet

====

Sample html integration page

public/test.html

====

