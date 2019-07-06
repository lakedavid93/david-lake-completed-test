@home
Feature: Home Page

  Background:
  	Given I navigate to the home page

  Scenario: Verify Navigation Items
    Then I should see the main navigation
    And the navigation should have correct options
