Given(/^I navigate to home page$/) do
  App.home.visit
end

Then(/^I should see the main navigation$/) do
  if App.home.popup.displayed? then
    options = App.home.popup_options
    App.home.click_link("England",options)
  end
  expect(App.home.nav_bar.displayed?).to eq true
end
