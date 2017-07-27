require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'faker'
require 'selenium-webdriver'
require 'site_prism'
require 'httparty'
require 'yaml'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
end
