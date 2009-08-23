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