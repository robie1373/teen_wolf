Feature: Request from Wolfram
  Scenario: I send a request to Wolfram
    Given I need to search for "vulpes"
    When I request the answer from Wolfram
    Then I get a valid response
