Feature: sample karate test script
  Background:
    * url 'http://localhost:8093'
    * header Accept = 'application/json'

  @tag13
  Scenario: id si bir olanı karsilastir
    Given path '/api/1.0/user/tugce'
    When method get
    Then status 200

    * def jsonResponse = read('user.json')
    * print jsonResponse

    And match response == jsonResponse