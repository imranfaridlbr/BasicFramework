
# Require External Libraries
require 'rspec'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'
require 'pry-byebug'

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

Capybara.register_driver :firefox do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.native_events = true
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome

Capybara.default_max_wait_time = 30

Capybara.app_host = 'http://www.gu.com'