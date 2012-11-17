# references
# http://pragdevnotes.com/2010/10/31/using-selenium-with-cucumber-through-webrat-or-capybara-which-one-to-choose
# https://github.com/jnicklas/capybara
# https://gist.github.com/428105
#

require 'debugger'

require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'


Capybara.default_driver = :selenium
Capybara.app_host = "http://127.0.0.1:8000/"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

World(Capybara)