source 'http://rubygems.org'

gem 'rails', '3.2.13'
# gem 'omniauth-identity'
gem 'devise'
gem 'cancan'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'simple_form'

group :production do
	gem 'pg'
end

group :development do
	gem "nifty-generators"
	gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end

gem "mocha", :group => :test
