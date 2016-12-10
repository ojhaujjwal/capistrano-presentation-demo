require 'json'

namespace :pm2 do
  desc 'Restart app gracefully'
  task :restart do
    on roles(:app) do
      within fetch(:deploy_to) do
        execute :pm2, 'startOrRestart ecosystem.json'
      end
    end
  end

end
