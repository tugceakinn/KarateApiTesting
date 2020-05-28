Feature: sample karate test script
  Background:
     * url apiURL
     * header Accept = 'application/json'

    @tag1 @get
    Scenario: get all users and then get the first user by id
      Given path 'users'
      When method get
      Then status 200
      Then assert response.length == 10
      * def first = response[0]
      Given path 'users', first.id
      When method get
      Then status 200

      And match $.id == 1
      And match $.name == 'Leanne Graham'

      And match $ contains {id:1, name:'Leanne Graham'}
      And match $ contains {email: #notnull}

    @tag2 @post
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

      #Given path id
      # When method get
      # Then status 200
      # And match response contains user