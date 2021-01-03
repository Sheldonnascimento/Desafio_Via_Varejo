require 'rspec'
require 'yaml'
require 'pry'
require 'capybara/cucumber'

 Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 30
end



