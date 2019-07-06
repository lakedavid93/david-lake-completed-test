@home
Feature: Home Page

  Background:
  	Given I navigate to the home page

  Scenario: Verify Navigation Items
    Then I should see the main navigation
    And the navigation should have correct options
  
  @focus
  Scenario: Search
  	When I search for "Pension"
  	And I click "State Pension" in search results
  	Then I will be directed to state pension page
