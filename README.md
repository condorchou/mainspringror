Mainspringror project
- Rails based multiclient CMS for managing videos, users, comments, ratings etc.
Uses Bits on the Run (botr) as CDR for video upload/convert/player/thumbnails.
Provides a RESTFUL webservice for integrating with 3rd parties
Uses devise authentication token for webservice loginless access.
Provides a js method for clients to quickly integrate externally hosted you-tube like video page, from within their intranet.
Customizable js methods mean that clients can control the look and behavior of their respective video pages without requiring extensive changes
to any of the Rails MVC.

Getting Started
===

install ruby 1.9.2, I use rvm

    rvm 1.9.2

make sure you have bundler installed and run
    
    bundle install

to install all the gems required
if you don't have bundler first run
    
    gem install bundler

to create tables, super_user and sample client, with one sample client_admin, run:
    
    rake db:migrate
  
To start the rails server locally, run

    unicorn

Goto localhost:8080

Signing In:
===

goto /login to sign-in as the 'super_user' (authentication token is super_user, password is also super_user)
as a super_user you are directed to /clients after you login, from there you can create, edit, delete clients.
click on logout link or visit /logout to logout.

TODO: not all links are conveniently located on all pages because navigation will depend on the type of
user logged in.  Use a partial template for this later.

login as sample client using authentication_token: belsobeer_joy@belsobeer.com, password is password.
as a client_admin you are redirected to the client show page.  You cannot access the list of clients at /clients/.
You can manage belsobeer's users or videos, but cannot accesses other clients content.

Creating Clients
===

If you are a super_user you can access /clients/new to create a new client.  A unique ID called a 'handle' is automatically
created based on the lowercased company name with all non alpha numeric characters converted to an underscore. 

The client will require a botr player key which is first created on bits on the run and paste the code into the client
record.  All videos for this client will use this botr player.


Creating Users
===

Users belong to a client and are managed by the client afer client signs in.  Goto clients/:client_id/users/new to create a new user.
Each user MUST have a globally (across all clients) unique authentication_token, this is created automatically
by concatenating the client handle and the user's client_user_id (which is the user ID the client has assigned him or her).
The user's client_user_id is unique within that client scope, it can be an email or other unique user ID.

Users use their authentication_token to login.

Creating Videos
===

Video creation takes 2 steps:
1) Create the DB record - 
  a) clients/client_id/videos/new
  b) upon submit and record is created you will be redirected to ...
2) Upload the video to botr
  a) clients/client_id/videos/upload_form
  b) select file from your computer and click submit, wait for success msg


Client Video Portal Installation:
===

Clients will be required to install a jQuery plugin on one of their intranet pages.
1) include jQuery
TODO use jQuery ajax request with caching turned on and explicte function name rather than random
2) include /clients/:client_id/main_spring.js plugin (will be cached on subsequent requests)
3) Create a containing div where content will be injected
4) invoke the jQuery plugin and pass user parameters to the script just as username, location, environment, remoteURI etc.

The plugin will use jsonp to communicate with the mainspring server which is on a different domain than the client's intranet.

The rails app uses the restful_jsonp plugin to allow POST, PUT and DELETE requests over jsonp by appending _method=POST etc, 
where normally only GET is possible.  This is so that ajax actions such as 'Add comment', which uses a POST to /videos/:video_id/comments are still possible.


See code on public/intranet.php for a sample of integration.  You can also view this page to test how the user experience will be using
the sample client.

Testing Client Video Portal Experience
===

    http://localhost/mainspringror/public/intranet.php

Customizing Client Intranet Portal Views
====

The js plugin makes webservice calls which return json wrapped in a callback function to display the data.
You can customize the js display function which converts the json data into HTML
TODO:
Use a json templating library such as PURE or Google Closure Templates to create default the look and behavior of video page per client.

TODO:
The custom markup and styling per client is done via client specific js and css which is loaded into the
layout after detecting the client



Authentication and Authorization using Devise and CanCan gems
===

set user roles in models/abilities.rb

super_admin - can manage all resources including adding or deleting clients
client_admin - client admin, can modify client record, manage users and videos
intranet_user - typical intranet user that just looks at videos, can comment, can rate

Content Assets
===

Templates that are stored in the DB.  Evaluated as erb.  Can be used to render misc client static content related
to videos, such as a policy page.

Tagging
===

git://github.com/jviney/acts_as_taggable_on_steroids.git

===
Uses thinking sphinx for full text video search in production

===
Runs flying sphinx on heroku
http://devcenter.heroku.com/articles/flying_sphinx

# For Cedar
$ heroku run rake fs:index
$ heroku run rake fs:start
$ heroku run rake fs:stop
$ heroku run rake fs:restart
$ heroku run rake fs:rebuild

====
runs once a day cron job to index videos
using heroku cron add on

