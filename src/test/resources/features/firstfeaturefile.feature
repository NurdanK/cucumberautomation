#All feature files must start with Feature keyword. There can be ONLY 1 Feature keyword per file.
#  Feature describes the overall test cases.
#  It can be the user story name
#  Google_Search_Functionality
# Google Search Functionality
  #  Scenario = Test Case
#  Under Scenario, we will have TEST STEPS
#  Given, And, Then, When, But, * annotations
#  These are Gherkin language
#  EACH STEP MUST START WITH A GHERKiN KEYWORD
#  Given should be used as preconditions
#  Then should be used for verifications
#  And and When should be used in hhe middle steps
  #Background keyword is used before each Scenario: keyword
  # Background is used for repeated pre conditions
    #it can not be used after Scenario keyword, so use it first


  @google_search
Feature: Google_Search_Functionality
  Background: user_is_on_the_google_page
    Given user is on the google page

  @iphone_search
  Scenario: TC01_iphone_search
    When user search for iPhone on google
    Then verify the result has iPhone related results
    Then capture the screenshot
    Then close the application


#  We can create multiple Scenarios
  @teapot_search
  Scenario: TC02_teapot_search
    #Given user is on the google page
    When user search for Tea Pot on google
    Then verify the result has Tea Pot related results
    Then capture the screenshot
    Then close the application

    #Flower Scenario:
  @flower_search @wip
  Scenario: TC03_flower_search
    #And user is on the google page
    When user search for flower on google
    Then verify the result has flower related results
    Then capture the screenshot
    Then close the application




# What is feature file?
  #we write our test Scenario in feature files.
  #we use Gherkin Languages in the feature files such as Feature, Scenario, Given, And, Then, When, But,Background
  #it is written in plain English
  # Known as non technical part. Everybody can read and understand

  #What is a step definition?
  #we write our Java code in the step definitions
  #this has the technical part.
  #only technical people can understand





