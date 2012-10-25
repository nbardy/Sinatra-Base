require 'sinatra'
require 'datamapper'

DataMapper::Logger.new($stdout, :debug)

# Set to local for devel if DATABASE_URL is not defined
DataMapper.setup(:default, ENV['DATABASE_URL'] || 
  'postgres://localhost/devel?user=devel&password=devel')

configure :test do
  DataMapper.setup(:default, "sqlite::memory:")
end

# Set error reporting on
DataMapper::Model.raise_on_save_failure = true
