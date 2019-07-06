Given(/^I search google for citizens advice$/) do
  App.google.visit
  App.google.search_for("Citizens Advice")
end

And(/^I click the correct result$/) do
  App.google.select_result("Citizens Advice")
end

Then(/^I will be directed to the home page$/) do
  expect(App.home.title.displayed?).to eq true
  expect(App.home.title.text).to eq "Welcome to Citizens Advice"
end