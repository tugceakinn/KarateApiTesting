Feature: sample karate test script
  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'

    @tag5
    Scenario: json ile okuduğum veriyi response karşılaştırması
      Given path 'users/1'
      When method get
      Then status 200

      * def JsonResponse = read('users.json')
      * print JsonResponse

      And match response == JsonResponse