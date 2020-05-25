Feature: user Details
  Background:
    * header Accept = 'application/json'

  @tag3
  Scenario: create a user
  * def user =
  """
  {
      "name": "azra",
      "job": "doctor"
  }
  """
  Given url https://reqres.in/api/users
  And request user
  When method post
  Then status 201


