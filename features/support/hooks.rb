driver = Selenium::WebDriver.for(:chrome) # Setup web driver
driver.manage.timeouts.implicit_wait = 10 # Set implicit wait time
driver.manage.window.maximize # Maximize browser window
App = Application.new driver

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
