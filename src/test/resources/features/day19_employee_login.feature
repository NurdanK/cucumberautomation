@employee_login_scenario_outline @smoke
Feature: employee_login
  Scenario Outline: login_with_employee_credentials
    Given user is on the login page
    And user clicks on login dropdown
    And user clicks on sign in button
    And user sends  username "<username>"
    And user sends  password "<password>"
    And user clicks on the login button
    Then close the application

    Examples: credentials
      |username                  |password              |
      |gino.wintheiser           |%B6B*q1!TH            |
      |    dallas.batz           |  dOWjuXz8*es6        |
      |leonel.skiles             |x3uvY0f8hw1T          |
      |freddy.veum               |*f**3dafHW3Jx         |
      |syble.jerde               |2*0R*!K&GB3T%G        |
      |julius.keebler            |F&134#R%0d            |



  #1. create the feature file
  #2. run runner and generate the missing step definition
  #3.put the step definitions in the LoginStepDefs
  #4. start writing java code i the step definition
  #5. create page objects and locate elements

    #gino.wintheiser
    #12:24
    #%B6B*q1!TH



