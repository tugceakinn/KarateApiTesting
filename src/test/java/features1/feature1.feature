Feature: sample karate test script
  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'

    @tag4
    Scenario: json ile okunan veriyi response ile karsilastirma
      Given path 'users/1'
      When method get
      Then status 200

      * def JsonResponse = read('users.json')
      * print JsonResponse

      And match response == JsonResponse