class GooglePage < GenericPage

  def visit
	  @driver.navigate.to("https://www.google.co.uk/")
	end

  def search_field
    @driver.find_element(:name, "q")
  end

  def submit_search
    @driver.find_element(:name, "btnK")
  end

  def search_for(text)
    search_field.send_keys text
    submit_search.click
  end

  def result_container
    @driver.find_element(:id, "search")
  end

  def results
    result_container.find_elements(:tag_name, "h3")
  end

  def select_result(text)
    results.each do |result|
      if result.text == text then
        result.click
        break
      end
    end
  end

end