set :application, 'capistrano-presentation-demo'
set :repo_url, 'git@github.com:ojhaujjwal/capistrano-presentation-demo.git'

set :deploy_to, '/var/www/app'

set :linked_files, ['config.js']

set :linked_dirs, ['tmp/session', 'tmp/cache', 'backups']

namespace :deploy do
  after :updated, "npm:install"

  after :finished, "npm:reload"
  after :finished, "notify:finish"

  after :failed, "notify:failure"
end
