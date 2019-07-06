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

end
