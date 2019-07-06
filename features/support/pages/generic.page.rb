# Super class that holds methods common across all pages
# All other page classes inherit this class

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

  def header_search
    @driver.find_element(:id, "main-header__search__input")
  end

  def search_submit
    @driver.find_element(:class, "main-header__search__submit")
  end

  def search_for(text)
    header_search.send_keys text
    search_submit.click
    @wait.until { page_title == "Search" }
  end

  def nav_bar
    @driver.find_element(:id, "main-nav")
  end

  def nav_items
    nav_bar.find_elements(:class, "top-item")
  end

  def page_title
    container = @driver.find_element(:class, "title")
    container.find_element(:tag_name, "h1").text
  end

  def content 
    @driver.find_element(:id, "main")
  end

end
