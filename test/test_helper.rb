# ENV['RAILS_ENV'] ||= 'test'
# require File.expand_path('../../config/environment', __FILE__)
# require "simplecov"
# require 'rails/test_help'
# require 'capybara'
# require 'capybara/rails'
# require 'minitest/rails'
# require 'headless'
# require 'phantomjs'
# require 'selenium-webdriver'
# require 'minitest/rails/capybara'
# require 'minitest/reporters'
# require 'capybara/poltergeist'
# require 'database_cleaner'
# require 'pry'
# require 'webmock/minitest'
#
# Dir[Rails.root.join("test/support/**/*.rb")].each { |f| require f }
# DatabaseCleaner.strategy = :truncation
# DatabaseCleaner.clean
# WebMock.disable_net_connect!(allow_localhost: true)
#
# Minitest::Reporters.use!(
#   Minitest::Reporters::ProgressReporter.new,
#   ENV,
#   Minitest.backtrace_filter
# )
#
# Rails.application.configure do
#   config.before_configuration do
#     env_file = Rails.root.join("config", 'local_env.yml').to_s
#
#     if File.exists?(env_file)
#       YAML.load_file(env_file)[Rails.env].each do |key, value|
#         ENV[key] = value
#       end
#     end
#     ENV["NLS_LANG"]
#   end
# end
#
# class ActionDispatch::IntegrationTest
#   include Capybara::DSL
#   include Rails.application.routes.url_helpers
#   include Warden::Test::Helpers
#
#   Warden.test_mode!
#
#
#   Capybara.default_driver = :poltergeist
#   Capybara.javascript_driver = :poltergeist
#   Capybara.default_max_wait_time = 10
#   # Capybara.save_path = 'test/screenshots'
#
#   Capybara.register_driver :poltergeist do |app|
#     Capybara::Poltergeist::Driver.new(app, phantomjs: Phantomjs.path, inspector: true)
#   end
#
#   Capybara.javascript_driver = :poltergeist_debug # allows debugging headless thing with : page.driver.debug
#
#   self.use_transactional_tests = false
#
#   def setup
#     @headless = Headless.new(display: 100, reuse: true, destroy_at_exit: true)
#     @headless.start
#   end
#
#   def teardown
#     Capybara.reset_sessions!
#     Capybara.use_default_driver
#
#     visit '/'
#     page.execute_script("sessionStorage.clear()")
#   end
#
#   def integration_sign_in_user
#     visit new_user_session_path
#   end
#
#   after do
#     DatabaseCleaner.clean
#   end
# end
#
# class ActiveSupport::TestCase
#   ActiveRecord::Migration.check_pending!
#   fixtures :all
#
#   extend MiniTest::Spec::DSL
#
#   register_spec_type self do |desc|
#     desc < Activerecord::Base if desc.is_a? Class
#   end
#
#   def context(*args, &block)
#     describe(*args, &block)
#   end
# end
#
# class MiniTest::Spec
#   before :each do
#     DatabaseCleaner.start
#   end
#   after :each do
#     DatabaseCleaner.clean
#   end
# end
