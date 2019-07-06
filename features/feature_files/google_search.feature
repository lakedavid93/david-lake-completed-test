@GoogleSearch
Feature: Google Search

  Scenario: Navigate to home page
    Given I search google for citizens advice
    And I click the correct result
    Then I will be directed to the home page