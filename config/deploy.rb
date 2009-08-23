set :application, "photobagel.com"

default_run_options[:pty] = true
set :repository,  "git@github.com:railsrumble/rr09-team-226.git"
set :scm, "git"
set :scm_passphrase, "chug0misact"
set :user, "root"
set :branch, "master"

set :deploy_to, "/var/www/#{application}"

role :app, "69.164.192.66"
role :web, "69.164.192.66"
role :db,  "69.164.192.66", :primary => true

namespace :photobagel do
 
  desc "Starts mail fetcher"
	task :start, :roles => :app do
		puts 'Starting the mail fetcher'
		sudo "RAILS_ENV=production #{current_path}/script/mail_fetcher start"
	end
	
	desc "Stops mail fetcher"
	task :stop, :roles => :app do
		puts 'Stopping the mail fetcher'
		sudo "RAILS_ENV=production #{current_path}/script/mail_fetcher stop"
	end
	
	desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
		photobagel.stop
		photobagel.start
  end

	after "deploy:restart" , "photobagel:restart"
end