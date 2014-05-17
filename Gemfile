source "https://rubygems.org"

gem "rails"
gem "pg"
gem "slim-rails"
gem "bootstrap-sass"
gem "bcrypt-ruby"
gem "faker"
gem "will_paginate"
gem "nokogiri"
gem "spring"
gem 'devise'
gem 'omniauth-twitter'
gem 'dotenv-rails'
if RUBY_PLATFORM =~ /darwin/
  gem 'therubyracer'
else
  gem 'therubyracer', :path => 'therubyracer-0.11.0beta1-x86-mingw32', :require => 'v8'
end
gem 'simple_form'
gem 'font-awesome-rails'

group :development, :test do
  gem "rspec-rails"
  gem "guard"
  gem "guard-rspec"
  gem "guard-spring"
  gem "factory_girl_rails"
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
  gem 'wdm', platforms: [:mingw, :mswin, :x64_mingw]
  gem 'twitter-bootswatch-rails'
end

group :test do
  gem "selenium-webdriver"
  gem "capybara"
  gem "cucumber-rails", require: false
  gem "database_cleaner", github: "bmabey/database_cleaner"
  gem "growl"
  gem "rb-notifu"
end

gem "sass-rails"
gem "uglifier"
gem "coffee-rails"
gem "jquery-rails"
gem "turbolinks"
gem "jbuilder"
group :production do
  gem "rails_12factor"
end
