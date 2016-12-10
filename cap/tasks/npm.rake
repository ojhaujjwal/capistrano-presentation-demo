namespace :npm do
  desc "Running npm Install"
  task :install do |task|
    on roles(:all) do
      within release_path do
        execute :npm, "install --no-dev"
      end
    end
  end
end
