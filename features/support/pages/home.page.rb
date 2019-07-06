class HomePage < GenericPage

  def visit
    @driver.navigate.to($base_url)
  end

  def popup
  	@driver.find_element(:class, "home-extent-popup__dialog")
  end

  def popup_options
  	popup.find_element(:class, "home-extent-popup__options")
  end

  def nav_bar
    @driver.find_element(:id, "main-nav")
  end

  def content
  	@driver.find_element(:id, "main")
  end

  def title
  	content.find_element(:tag_name, "h1")
  end

end
