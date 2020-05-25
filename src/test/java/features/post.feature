#language:tr
Feature: user Details
  Background:
    * url apiURL2
    * header Accept = 'application/json'

    @tag6
    Scenario: create a user
    * def user =
    """
    {
        "name": "azra",
        "job": "doctor"
    }
    """
    And request user
    When method post
    Then status 201


