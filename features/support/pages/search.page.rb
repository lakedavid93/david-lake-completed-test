class SearchPage < GenericPage

	def results
		content.find_element(:class, "search-results")
	end

end