require 'json'

namespace :pm2 do

  def app_status
    within current_path do
      execute "pwd"
      ps = JSON.parse(capture :pm2, :jlist, 'server.js')
      if ps.empty?
        return nil
      else
        # status: online, errored, stopped
        return ps[0]["pm2_env"]["status"]
      end
    end
  end

  def restart_app
    within current_path do
      execute :pm2, :stop, 'server'
      execute :pm2, :start, 'server.js'
    end
  end

  def start_app
    within current_path do
      execute :pm2, :start, 'server.js'
    end
  end

  desc 'Restart app gracefully'
  task :restart do
    on roles(:app) do
      within fetch(:deploy_to) do
        execute 'pwd'
        execute :pm2, 'startOrRestart ecosystem.json'
      end
    end
  end

end
