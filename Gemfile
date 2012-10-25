source 'https://rubygems.org'

# Framework
gem 'sinatra', :require => 'sinatra/base'

## Database
gem 'pg'
gem 'dm-postgres-adapter'

# ORM
gem 'datamapper'

# Web Server
gem 'thin'

# Logging
gem 'logger'

# For rake commands
gem 'rake'

# Testing libraries
group :test do
  gem "rspec"
  # Add arguments for 'its' matcher
  gem 'its'
  gem "rack-test"
  # Adds datamapper matchers
  gem "dm-rspec"

  # For creating objects( like fixtures, but better)
  gem "machinist"
  gem "machinist-dm"
end

# For automating tasks(Development)
group :development do
  gem 'guard'
end
