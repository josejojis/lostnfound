namespace :deploy do
    before 'deploy:assets:precompile', 'deploy:build_js'
  
    task :build_js do
      on roles(:web) do
        within release_path do
          execute :yarn, 'build'
        end
      end
    end
  end
  