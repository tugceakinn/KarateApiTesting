Feature: sample karate test script
  Background:
    * url 'http://localhost:8093'
    * header Accept = 'application/json'

    @tag9
    Scenario: get all users and then get the first user by id
    Given path '/api/1.0/user'
    When method get
    Then status 200
    * def first = response[0]
    Given path '/api/1.0/user'
    When method get
    Then status 200

    @tag10
    Scenario: create a user and then get it by id
    * def user =
    """
      {
        "username":"bilal",
        "email":"email@gmail",
        "password":"Tt123456.",
        "name":"tuğçe",
        "surname":"akın"
    }
      """
    Given path '/api/1.0/user'
    And request user
    When method post
    Then status 201