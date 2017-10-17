Feature: Search for EK flights on JakubM.com
  Scenario: Search for EK flights on JakubM.com
    Given I am on the JakubM.com home page
    When I type "EK" for flight number
    Then flights of "Emirates" are visible
    Then flights of "Air France" are not visible
