package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import pages.CommonPageElements;
import pages.UserManagementPage;
import utilities.Driver;

public class CreateNewUserStepDefs {
    CommonPageElements commonPageElements = new CommonPageElements();
    UserManagementPage userManagementPage = new UserManagementPage();

    @Given("user clicks on Administration")
    public void user_clicks_on_administration() {
      Driver.waitAndClick(commonPageElements.administrationDropdown);
    }
    @Given("user clicks on User management")
    public void user_clicks_on_user_management() {
       Driver.waitAndClick(commonPageElements.userManagementButton);
    }
    @Given("user clicks create a new user button")
    public void user_clicks_create_a_new_user_button() {
        Driver.waitAndClick(userManagementPage.createNewUserButton);
    }
    @Given("user provides Login  as {string}")
    public void user_provides_login_as(String string) {
       Driver.waitAndSendText(userManagementPage.loginId,"beow");
    }
    @Given("user provides Firstname as {string}")
    public void user_provides_firstname_as(String string) {
        Driver.waitAndSendText(userManagementPage.firstName,"Julie");
    }
    @Given("user provides Lastname as {string}")
    public void user_provides_lastname_as(String string) {
        Driver.waitAndSendText(userManagementPage.lastName,"French");
    }
    @Given("user enters email as {string}")
    public void user_enters_email_as(String string) {
         Driver.waitAndSendText(userManagementPage.email,"marleighfrench@gmail.com");
    }
    @Given("user select the Language")
    public void user_select_the_language() {
       Driver.selectByIndex(userManagementPage.language,1);
    }
    @Given("user select the profiles")
    public void user_select_the_profiles() {
     Driver.selectByVisibleText(userManagementPage.profiles,"ROLE_MANAGER");
    }
    @Given("user click on save button")
    public void user_click_on_save_button() {
     Driver.waitAndClick(userManagementPage.saveButton);
     Driver.wait(3);
    }
    @Then("verify the new user creation is successful")
    public void verify_the_new_user_creation_is_successful() {
      Assert.assertTrue(userManagementPage.successmessage.isDisplayed());
    }



}
