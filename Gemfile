source "https://rubygems.org"

gem "rails", "4.0.1"
gem "sass-rails", "~> 4.0.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.0.0"
gem "jquery-rails"
gem "jbuilder", "~> 1.2"
gem "foundation-rails", "~> 5.0.2.0"

#Heroku Required Gems:
group :production do
  gem "rails_12factor"
  gem "pg"
end

group :doc do
  gem "sdoc", require: false
end





group :test, :development do
  gem "sqlite3"
  gem "rspec-rails"
  gem "capybara"
  gem "selenium-webdriver"
  gem "better_errors"
  gem "binding_of_caller"
  gem "terminal-notifier-guard"
  gem "factory_girl_rails"
  gem "simplecov"
  gem "database_cleaner"
  gem "guard", ">=2.1.0"
  gem "guard-rspec"
end

ruby "2.0.0"