source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem 'pg'
gem 'bootstrap', '~> 5.3.0.alpha3'
gem 'carrierwave', '>= 3.0.0.beta', '< 4.0'
gem "mini_magick"
gem 'ancestry'
gem 'will_paginate', '~> 4.0'
gem 'coffee-rails'
gem 'devise'
gem "font-awesome-rails"

gem "rails", "~> 7.0.5"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
gem "image_processing", "~> 1.2"

# gem "sprockets-rails"
# gem "redis", "~> 4.0"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  gem "letter_opener", group: :development
  
	# gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end