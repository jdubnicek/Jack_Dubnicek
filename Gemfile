source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "~> 5.0.4"
# Use PostgreSQL as the database for Active Record
gem "pg"
# Use Puma as the app server
gem "puma", "~> 3.0"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Slim is a superior templating engine
gem "slim-rails"
gem "bootstrap-sass"
# Use jquery as the JavaScript library
gem "jquery-rails"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Use Devise for Authentication
gem "devise", "~> 4.3"
# Use Pundit for Authorization
gem "pundit"
# Use Paperclip for Image Uploading
gem "paperclip", "~> 5.0.0"
# Enhanced fonts
gem 'font-awesome-sass', '~> 4.7.0'

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platform: :mri
  # for debugging
  gem "pry"
  gem "pry-rails"
  gem "pry-byebug"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do

  gem 'launchy'
  gem 'minitest-rails'
  gem 'minitest-capybara'
  gem 'minitest-focus'
  gem 'minitest-rails-capybara'
  gem 'minitest-spec-context'
  # customizable MiniTest output formats
  gem 'minitest-reporters', require: false
  gem 'shoulda-matchers'

  # for test coverage report
  gem 'simplecov', require: false

  # for integration testing
  gem 'capybara'
  gem 'database_cleaner'
  gem 'capybara-screenshot'
  gem 'poltergeist'
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
  gem 'selenium-webdriver', "~> 3.1.0"
  gem 'headless'
  gem 'webmock'

  # continuous visual integration
  gem 'percy-capybara'

  # For filling out forms in integration tests
  gem 'formulaic'
end
