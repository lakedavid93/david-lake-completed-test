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

  def page_title
    container = @driver.find_element(:class, "title")
    container.find_element(:tag_name, "h1").text
  end

  def content
    @driver.find_element(:id, "main")
  end

end
