Feature:
  Background:
    * url 'https://reqres.in/'

    @tag6
    Scenario: cagrilmak icin olusturulan method

      * path '/api/users/2'
      When method get
      Then status 200
      Then print response

