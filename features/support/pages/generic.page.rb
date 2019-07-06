class GenericPage
  include RSpec::Matchers
  attr_accessor :driver

  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
  end

  def click_link(name)
    @driver.find_element(:link, name).click
  end

end
