
#unicorn -E development -c config/unicorn.rb -D
source 'https://rubygems.org'

gem 'sinatra', git: 'git@github.com:sinatra/sinatra.git'

gem 'padrino', '0.12.4'


# Distribute your app as a gem
# gemspec

# Server requirements
# gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'compass'
gem 'carrierwave'
gem 'mini_magick'
gem 'bcrypt'
gem 'sass'
gem 'erubis', '~> 2.7.0'
gem 'activerecord', '>= 3.1', :require => 'active_record'
gem 'sqlite3'

# Test requirements
gem 'shoulda', :group => 'test'
gem 'rack-test', :require => 'rack/test', :group => 'test'

# Padrino Stable Gem
gem 'unicorn'
gem 'padrino-contrib'
gem 'padrino-warden'
gem 'bcrypt'

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
# %w(core support gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.12.4'
# end
