set :stage, :staging

# Server
# ==================
server 'beta.vmerch.me', roles: [:app, :web, :db]
set :deploy_to, '/home/justinrcook/websites/vmerch.me/beta'
set :shared_config_path, shared_path.join('config')