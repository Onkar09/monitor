require 'selenium-webdriver'
require 'yaml'
require 'test/unit'
require 'rspec/expectations'
include RSpec::Matchers
# require 'require_all'
# require '/Users/onkar/Documents/cucumber_project/features/support/base'

# require_all '/Users/onkar/Documents/cucumber_project/features/support/*.rb'

class BasePage < Test::Unit::TestCase

	def initialize
		Selenium::WebDriver::Chrome.driver_path='/var/lib/jenkins/workspace/monitor/features/Drivers/chromedriver'
		options = Selenium::WebDriver::Chrome::Options.new
		options.add_argument('--headless')
		@driver = Selenium::WebDriver.for :chrome, options: options
		# @driver = Selenium::WebDriver::for :firefox
		@driver.manage.window.resize_to(1440,900)
		# @driver.manage.window.maximize
	end


	def teardown
		@driver.quit
	end
end
