#!/home/justinrcook/.rbenv/shims/ruby

## - http://adamish.com/blog/archives/775
## - https://github.com/dre3k/rails3_fcgi/blob/master/public/rails3_fcgi.fcgi

ENV['RAILS_ENV'] = 'production'
ENV['HOME'] ||= '~/websites/vmerch.me/beta'
ENV['GEM_HOME'] = '~/.rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0'
ENV['GEM_PATH'] = ENV['GEM_HOME']

# Needed to install fcgi into the global gems rather than in the
# application bundle
require 'fcgi'
require File.join(File.dirname(__FILE__), '../config/environment.rb')

class Rack::PathInfoRewriter
  def initialize(app)
    @app = app
  end
  def call(env)
    env.delete('SCRIPT_NAME')
    parts = env['REQUEST_URI'].split('?')
    env['PATH_INFO'] = parts[0]
    env['QUERY_STRING'] = parts[1].to_s
    @app.call(env)
  end
end

Rack::Handler::FastCGI.run  Rack::PathInfoRewriter.new(Vmerch::Application)