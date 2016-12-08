set :deploy_config_path, 'cap/deploy.rb'
set :stage_config_path, 'cap/stages'

require "capistrano/setup"
require "capistrano/deploy"

# Load custom tasks from `cap/tasks/tasks` if you have any defined
Dir.glob('cap/tasks/*.rake').each { |r| import r }
