source :rubygems

# Server requirements
gem 'thin' 

# Project requirements
gem 'rake'

# DB
gem 'bson_ext',     :require => 'mongo'
gem 'mongo_mapper', :require => 'mongo_mapper'

# Component requirements
gem 'compass'
gem 'slim'
gem 'sprockets' 
gem 'coffee-script'  
gem 'uglifier' 
gem 'eco'
gem 'padrino-sprockets',     :git => 'git://github.com/bookworm/padrino-sprockets.git'     
gem 'padrino-assethelpers',  :git => 'git://github.com/bookworm/padrino-assethelpers.git'             
gem 'padrino-responders',    :git => 'git://github.com/bookworm/padrino-responders.git'     
gem 'padrino-flash'
gem 'oj',         :require => 'oj'
gem 'multi_json', :require => 'multi_json'
gem 'mongo_mapper_acts_as_list', :git     => 'git://github.com/bookworm/mongo_mapper_acts_as_list.git', :require => 'mongo_mapper_acts_as_list'

gem 'filepicker-padrino', :require => 'filepicker-padrino', :git => 'git://github.com/bookworm/filepicker-padrino.git'
gem 'padrino-contrib', :git => 'git://github.com/bookworm/padrino-contrib.git' 
gem 'padrino-flash'

# Test requirements
group :test do
  gem 'mocha'
  gem 'minitest', '~>2.6.0', :require => 'minitest/autorun'
  gem 'rack-test',           :require => 'rack/test'
  gem 'ffaker',              :require => 'ffaker'
  gem 'factory_girl',        :require => 'factory_girl'
end

# Development requirements
group :development do 
  gem 'ffaker'
end

# Padrino Stable Gem
gem 'padrino', '0.10.7'
