default_run_options[:pty] = true
#set :application, "www.mainspringror.com" #"set your application name here"
#set :repository,  "git@meatteamror.unfuddle.com:meatteamror/mtrorgitrepo.git" #"set your repository location here"

#set :scm, :git # :subversion
#set :scm_passphrase, "m3att3am"
set :branch, "staging"
ssh_options[:forward_agent] = true

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

#role :web, "aries.ocssolutions.com" # "your web-server here"                          # Your HTTP server, Apache/etc
#role :app, "aries.ocssolutions.com" #"your app-server here"                          # This may be the same as your `Web` server
#role :db,  "aries.ocssolutions.com" #"your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts


set :deploy_to, "/home/mainspri/rails_apps/staging"
#set :user, "meatteam"
#set :password, "m3att3am"
set :use_sudo, false
set :deploy_via, :remote_cache


namespace :deploy do
   #task :start {}
   #task :stop {}
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
   
   after "deploy:update_code", :link_production_db 
end

desc "link in the production database.yml"
task :link_production_db do
  run "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
  run "ln -nfs #{deploy_to}/shared/public/thumbnails #{release_path}/public/thumbnails"
  run "ln -nfs #{deploy_to}/shared/public/.htaccess #{release_path}/public/.htaccess"
end


