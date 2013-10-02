set :application, 'vmerch'
set :repo_url, 'https://github.com/justinrcook/vmerch.git'

# Deploy/SSH Config
# ==================
set :scm, :git
set :ssh_options, {
  user: 'justinrcook',
  host_name: 'cooksidingsupply.com'
}
set :branch, 'dreamhost'
set :keep_releases, 3

## Linked Files
# ==================
set :linked_files, %w{config/database.yml config/application.yml}
set :linked_dirs, %w{public/uploads log}

## Rbenv Config
# ==================
set :rbenv_type, :user
set :rbenv_ruby, '2.0.0-p247'

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  before 'config:upload', 'config:create_shared_config'
  after :starting, 'config:upload'
  after :finishing, 'deploy:cleanup'

end