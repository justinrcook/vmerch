set :stage, :production

# Server
# ==================
server 'vmerch.me', roles: [:app, :web, :db]
set :deploy_to, '/home/justinrcook/websites/vmerch.me/www'
set :shared_config_path, shared_path.join('config')