set :application, "zyanya.cat"
set :repository,  "git@github.com:jrom/zyanya.cat.git"
set :deploy_to, "/home/jordi/apps/zyanya.cat"
set :deploy_via, :remote_cache
set :branch, "master"

set :user, "jordi"

set :use_sudo, false
ssh_options[:forward_agent] = true

set :scm, :git

role :web, "zyanya.cat"
role :app, "zyanya.cat"
role :db,  "zyanya.cat", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
end

