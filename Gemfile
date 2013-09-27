source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', git: 'https://github.com/thomas-mcdonald/bootstrap-sass', branch: '3'
gem 'figaro'
gem 'haml-rails'
gem 'simple_form', '>= 3.0.0.rc', git: 'https://github.com/plataformatec/simple_form.git'
gem 'friendly_id', github: 'FriendlyId/friendly_id', branch: 'master'
gem 'carrierwave'

group :development do
	gem 'mysql2'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'html2haml'
  gem 'quiet_assets'
	gem 'capistrano', github: 'capistrano/capistrano', branch: 'v3'
	gem 'capistrano-rails'
	gem 'capistrano-bundler', github: 'capistrano/bundler'
end

group :production do
	gem 'rails_12factor'
	gem 'pg'
	gem 'unicorn'
end