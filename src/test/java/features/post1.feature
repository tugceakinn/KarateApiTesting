Feature: post
  Background:
    * url apiURL
    * header Accept = 'application/json'

    @tag3
    Scenario: create a user and then get it by id
    * def user =
    """
      {
          "name": "Tugce Akin",
          "username": "tugce",
          "email": "tugce@user.com",
          "address": {
            "street": "Has No Name",
            "suite": "Apt. 123",
            "city": "Istanbul",
            "zipcode": "54321-6789"
          }
      }
      """
    Given path 'users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ' + id

    Given path id
          # When method get
          # Then status 200
          # And match response contains user