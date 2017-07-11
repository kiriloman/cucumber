require "capybara/cucumber"
require "rspec"
require "selenium-webdriver"

Before do
  Capybara.page.driver.browser.manage.window.maximize
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60
