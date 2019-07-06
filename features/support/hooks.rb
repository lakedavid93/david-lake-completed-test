driver = Selenium::WebDriver.for(:chrome)
driver.manage.timeouts.implicit_wait = 10 # Set implicit wait time
driver.manage.window.maximize # maximize browser window
App = Application.new driver

# At the start of every test
Before do
	@wait = Selenium::WebDriver::Wait.new(:timeout => 15)
end

# If a test fails take screenshot and add to screenshots folder
After do |scenario|
	if scenario.failed? then
		driver.save_screenshot("screenshots/" + scenario.name + ".png")
	end
end

# Tear down when all tests have finished
at_exit do
	driver.quit
end
