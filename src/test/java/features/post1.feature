Feature: returned users
  Background:
    * url 'https://gorest.co.in'
    * header Authorization = 'Bearer CcQja8VrPLuWxOUAdQyrwtDGnF1_j9C6xxny'

   @tag7
   Scenario: Authorization ile user oluşturma
     Given path '/public-api/users'
     And param first_name = 'john'
     And param status = 'inactive'
     When method get
     Then status 200

     #And def userResponse = response
     #Then match userResponse._meta.message == ["OK. Everything worked as expected."]
