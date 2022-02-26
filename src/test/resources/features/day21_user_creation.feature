@create_new_user
  Feature: creating new user feature

    Scenario: login_as_admin

      Given user is on the login page
      And user clicks on login dropdown
      And user clicks on sign in button
      And user enters admin_id and admin_password
        |admin_username|admin_password|
        |  CWoburn    |Cw192837?     |

      And user clicks on the login button


    Scenario: create_new_user
        Given user clicks on Administration
        And user clicks on User management
        And user clicks create a new user button
        And user provides Login  as "<Login>"
        And user provides Firstname as "<Firstname>"
        And user provides Lastname as "<Lastname>"
        And user enters email as "<email>"
        And user select the Language
        And user select the profiles
        And user click on save button
        Then verify the new user creation is successful




