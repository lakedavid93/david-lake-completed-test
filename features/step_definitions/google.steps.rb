Given(/^I search google for citizens advice$/) do
  App.google.visit
  App.google.search_for("Citizens Advice")
end

And(/^I click the correct result$/) do
  App.google.select_result("Citizens Advice")
end

Then(/^I will be directed to the home page$/) do
  expect(App.home.content.text).to include "Welcome to Citizens Advice"
end