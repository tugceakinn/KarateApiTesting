Feature: sample karate test script
  Background:
    * url 'http://localhost:8093'
    * header Accept = 'application/json'

    @tag9 @get
    Scenario: get all users
      Given path '/api/1.0/user'
      When method get
      Then status 200
      * def first = response[0]
      Given path '/api/1.0/user/username'
      * print first
      When method get
      Then status 200


    @tag10 @post
    Scenario: create a user and then get it by id
      * def user =
      """
        {
          "username":"tugce",
          "email":"email@gmail",
          "password":"Tt123456.",
          "name":"tugce",
          "lastname":"akin"
        }
        """
      Given path '/api/1.0/user'
      And request user
      When method post
      Then status 201

     @tag11
     Scenario: put user
       * def user =
       """
        {
          "username":"tugce",
          "email":"email@gmail",
          "password":"Tt123456.",
          "name":"tugce",
          "lastname":"sahin"
        }

       """
       Given path '/api/1.0/user/tugce'
       And request user
       When method put
       Then status 200

     @tag12
     Scenario: delete user
       * def user =
       """
       {
          "username":"tugce",
          "email":"email@gmail",
          "password":"Tt123456.",
          "name":"tugce",
          "lastname":"sahin"
        }

       """
       Given path '/api/1.0/user/username'
       And request user
       When method delete
       Then status 200


