class HomePage < GenericPage

  def visit
    @driver.navigate.to($base_url)
  end

  def nav_bar
    @driver.find_element(:id, "main-nav")
  end

end
