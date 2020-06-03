Feature:
  Background:
    #* def feature = read('basic.feature')
    #* def result = call feature

    * def result = call read('basic.feature')

    @tag7
    Scenario: call read senaryosu
    Then print 'result:', result

    * def firstname = result.response.data.first_name
    * print 'firstname:', firstname