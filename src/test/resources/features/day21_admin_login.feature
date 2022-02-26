@admin_login @smoke
Feature: admin login feature

  Scenario: login_with_employee_credentials
    Given user is on the login page
    And user clicks on login dropdown
    And user clicks on sign in button
    And user enters admin_id and admin_password

      |admin_username|admin_password|
      |CWoburn       |Cw192837?     |
    And user clicks on the login button
    Then verify the login is successful
    Then capture the screenshot
    Then close the application


    # DATA TABLES
  #data tables are used for providing data
  #data tables are similar to Scenario outline
  #but data tables can be used in any step to provide data
