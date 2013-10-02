#!/home/justinrcook/.rbenv/shims/ruby

ENV['RAILS_ENV'] = 'production'
ENV['HOME'] ||= '/home/justinrcook/websites/vmerch.me/beta'
ENV['GEM_HOME'] = '/home/justinrcook/.rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0'
ENV['GEM_PATH'] = '/home/justinrcook/.rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0'

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