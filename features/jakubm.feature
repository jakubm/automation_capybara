Feature: Search for BA flights on JakubM.com

  Scenario: Search for BA flights on JakubM.com
    Given I am on the JakubM.com home page
    When I type "BA" for flight number
    Then flights of "British Airways" are visible
    Then flights of "Lufthansa" are not visible
