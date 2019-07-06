class GenericPage

  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
  end

  def click_link(name, container = nil)
    if container == nil then
      @driver.find_element(:link, name).click
    else 
      container.find_element(:link, name).click
    end
  end

end
