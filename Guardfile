# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', :version => 2 do
  # Watch helper file
  watch('spec/spec_helper.rb')  { "spec" }

  # Watch Models
  watch(%r{^db/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  
end
