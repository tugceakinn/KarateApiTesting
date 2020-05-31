Feature:
  Background:

    @tag14
    Scenario: Call Function
      * def javamethod = Java.type('javaFunctions.JavaFunctions')
      #package.classname
      * def result = new javamethod().functionPrint()

    @tag15
    Scenario: Call Function with Arguments
      * def javamethodwithargument = Java.type('javaFunctions.JavaFunctions')
      * def result = new javamethodwithargument().functionwithArgument('Karate')

    @tag16
    Scenario: Call Function with Arguments and create text.txt
      * def txt = Java.type('javaFunctions.JavaFunctions')
      * def result = new txt().writeData('Karate!!')