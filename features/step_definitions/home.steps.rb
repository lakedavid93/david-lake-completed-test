Given(/^I navigate to the home page$/) do
  App.home.visit
  if App.home.popup.displayed? then
    options = App.home.popup_options
    App.home.click_link("England", options)
  end
end

Then(/^I should see the main navigation$/) do
  expect(App.home.nav_bar.displayed?).to eq true
end

Then(/^the navigation should have correct options$/) do
  options = [
    "Benefits", "Work", "Debt and money", 
    "Consumer", "Housing", "Family", "Law and courts", 
    "Immigration", "Health", "More from us"
  ]
  App.home.nav_items.each_with_index do |item,i|
    text = item.find_element(:tag_name, "a").text
    expect(text).to eq options[i]
  end
end

When(/^I search for "(.+)"$/) do |text|
  App.home.search_for(text)
end

When(/^I click "(.+)" in search results$/) do |choice|
  link = App.search.results.find_element(:link, choice)
  link.location_once_scrolled_into_view
  link.click
end

Then(/^I will be directed to state pension page$/) do
  expect(App.generic.page_title).to eq "State Pension"
end
