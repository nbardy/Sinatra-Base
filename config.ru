require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require 'logger'

Rabl.register!
require './app'

require 'resque/server'

use Rack::ShowExceptions

# Set the AUTH env variable to your basic auth password to protect Resque.
AUTH_PASSWORD = ENV['AUTH']
if AUTH_PASSWORD
  Resque::Server.use Rack::Auth::Basic do |username, password|
    password == AUTH_PASSWORD
  end
end

run Rack::URLMap.new \
  "/"       => AppName::App.new,
  "/resque" => Resque::Server.new
