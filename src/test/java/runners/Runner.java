package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)                 // runner class
@CucumberOptions(
        plugin = {
                "pretty", // this is used for more readable reports or outputs==>on console and report at html
                "html:target/default-cucumber-reports.html",    //use this reports
                "json:target/json-reports/cucumber.json",
                "junit:target/xml-report/cucumber.xml",
                "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
                "rerun:target/failedRerun.txt"
        },
        features = "C:\\Users\\Nurdan\\IdeaProjects\\mycucumberproject\\src\\test\\resources\\features",
        glue = {"stepdefinitions","Hooks"},  //run stepdefinition and hook folder
      // tags = "@teapot_search or @flower_search"   ==> calisiyor
        tags = "@money_transfer",
        dryRun = false

)
public class Runner {
}
/*
Runner is used to run the feature files(Test Cases)
@RunWith(Cucumber.class)  : this makes the class Runnable.
@CucumberOptions :
-add path of features folder and step definitions folder,
-tags
-dryRun
-Report plugins
-failedRunner plugin
------------------
What is the role of?
-features: path of features folder.
-glue: path of step definitions folder
-tags: to run individual or multiple features or scenarios
For example: if I run pass same tag to multiple feature, then all features with that tag will run
==> dryRun: to check if there is any missing step definition(java code)
          :dryRun can be true or false
          dryRun= false  ==> default behavior. it runs the test on the browser while checking missing step
          dryRun=true ==> do not run tests on the browser and only check if there is any missing step definition
 */
