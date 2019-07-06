class HomePage < GenericPage

  def visit
    @driver.navigate.to($base_url)
  end

  def nav_bar
    @driver.find_element(:id, "main-nav")
  end

  def popup
  	@driver.find_element(:class, "home-extent-popup__dialog")
  end

  def popup_options
  	popup.find_element(:class, "home-extent-popup__options")
  end

end
