set :application, "photobagel.com"

default_run_options[:pty] = true
set :repository,  "git@github.com:railsrumble/rr09-team-226.git"
set :scm, "git"
set :scm_passphrase, "chug0misact"
set :user, "root"
set :runner, "root"
set :branch, "master"

set :deploy_to, "/var/www/#{application}"

role :app, "69.164.192.66"
role :web, "69.164.192.66"
role :db,  "69.164.192.66", :primary => true

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

namespace :mail_fetcher do
  desc "Start mail_fetcher process" 
  task :start, :roles => :app do
    run "cd #{current_path}; #{rails_env} script/mail_fetcher start" 
  end

  desc "Stop mail_fetcher process" 
  task :stop, :roles => :app do
    run "cd #{current_path}; #{rails_env} script/mail_fetcher stop" 
  end

  desc "Restart delayed_job process" 
  task :restart, :roles => :app do
    mail_fetcher.stop
		mail_fetcher.start
  end
end

after "deploy:start", "mail_fetcher:start" 
after "deploy:stop", "mail_fetcher:stop" 
after "deploy:restart", "mail_fetcher:restart"