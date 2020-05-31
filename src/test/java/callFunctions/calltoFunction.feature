Feature:
  Background:

  @tag8
  Scenario:
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    Then print response
    * def data = response.data
    Then print 'data:', data

    * def func =
    """
    function(arg) {
     for(i=0;i<arg.length;i++) {
        if(arg[i].id == 9){
           return arg[i]
        }
     }
    }
    """
    * def userDetails = call func data
    Then print 'userDetails', userDetails