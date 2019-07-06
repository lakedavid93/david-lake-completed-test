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
