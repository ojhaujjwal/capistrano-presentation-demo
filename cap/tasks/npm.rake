namespace :npm do
  desc "Running npm Install"
  task :install do
    on roles(:all) do
      within release_path do
        execute :npm, "install --no-dev --prefer-dist --optimize-autoloader -n --quiet"
       end
    end
  end

    desc "Running npm reload"
    task :reload do
      on roles(:all) do
        within release_path do
          execute "npm run reload || npm run start"
         end
      end
    end
end