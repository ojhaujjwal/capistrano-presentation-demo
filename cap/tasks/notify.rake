namespace :notify do
  task :finish do |task|
    on roles(:all) do
      `notify-send --urgency='normal' "Capistrano Task: Finished" "#{task.name_with_args}"`
    end
  end

    task :failure do |task|
    on roles(:all) do
      `notify-send --urgency='critical' "Capistrano Task: ERROR" "#{task.name_with_args}"`
    end
  end
end
