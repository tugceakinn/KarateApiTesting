#language:tr
Feature: user Details
  Background:
    * url apiURL2
    * header Content-Type = 'application/json'

    @tag3 @post
    Scenario: create a user
    * def user =
    """
    {
        "name": "azra",
        "job": "student"
    }
    """
    And request user
    When method post
    Then status 201



