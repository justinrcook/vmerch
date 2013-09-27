set :stage, :aea267

# Server
# ==================
server '207.28.160.52', roles: [:app, :web, :db]

set :ssh_options, {
  user: 'deploy',
  host_name: '207.28.160.52'
}

set :deploy_to, '/home/deploy/vmerch.me/'
set :shared_config_path, shared_path.join('config')