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

  def title
  	content.find_element(:tag_name, "h1")
  end

end
