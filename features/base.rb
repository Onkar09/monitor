require 'selenium-webdriver'
require 'yaml'
require 'test/unit'
# require 'rspec/expectations'
require 'rspec'
# include RSpec::Matchers
# require 'require_all'
# require '/Users/onkar/Documents/cucumber_project/features/support/base'

# require_all '/Users/onkar/Documents/cucumber_project/features/support/*.rb'

class BasePage < Test::Unit::TestCase

	def initialize
		Selenium::WebDriver::Chrome.driver_path='./features/Drivers/chromedriver_ubuntu'
		chrome_options = Selenium::WebDriver::Chrome::Options.new
		# options.add_argument('--headless')
		# chrome_options = Options()
		chrome_options.add_argument('--headless')
		chrome_options.add_argument('--no-sandbox')
		chrome_options.add_argument('--disable-dev-shm-usage')
		chrome_options.add_argument('w3c', false)
		@driver = Selenium::WebDriver.for :chrome, options: chrome_options
		@driver.manage.timeouts.implicit_wait = 120 # seconds
		# @driver = Selenium::WebDriver::for :chrome
		# @driver = Selenium::WebDriver::for :firefox
		# @driver.manage.window.resize_to(1440,900)
		# @driver.manage.window.resize_to(411,823)
		# @driver.manage.window.maximize
	end


	def teardown
		@driver.quit
	end
end
