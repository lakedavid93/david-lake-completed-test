Given(/^I navigate to home page$/) do
  App.home.visit
end

Then(/^I should see the main navigation$/) do
  expect(App.home.nav_bar.displayed?).to eq true
end
