require './config/database'
require './db/models'

module AppName
  class App < Sinatra::Base
    # Basic Intro Page
    get '/' do
      "Hello World!"
    end

  end
end
