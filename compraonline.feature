## syntax para cocumber
# require plugins

#*** Settings ***
#Test Setup  Navegar a la pagina  http://amazon.es
#Test Teardown  Cerrar navegador
  # G
# *** Test Cases ***
Feature: Compra en el e-commerce online
  Scenario: Usuario no logado puede listar productos catalogo
    Given usuario no logado
    When usuario busca productos de tipo jardineria
    Then aparecen resultados de busqueda de productos relevantes


#depuis compraonline.py
#Exemple d'une classe depuis tutorial
public class cucumberTag {
   WebDriver driver = null;

   @Given("^user navigates to facebook$")
   public void goToFacebook() {
      driver = new FirefoxDriver();
      driver.navigate().to("https://www.facebook.com/");
   }

   @When("^I enter Username as \"([^\"]*)\" and Password as \"([^\"]*)\"$")
   public void I_enter_Username_as_and_Password_as(String arg1, String arg2) {
      driver.findElement(By.id("email")).sendKeys(arg1);
      driver.findElement(By.id("pass")).sendKeys(arg2);
      driver.findElement(By.id("u_0_v")).click();
   }

   @Then("^login should be unsuccessful$")
   public void validateRelogin() {
      if(driver.getCurrentUrl().equalsIgnoreCase(
         "https://www.facebook.com/login.php?login_attempt=1&lwv=110")){
            System.out.println("Test Pass");
      } else {
         System.out.println("Test Failed");
      }
      driver.close();
   }

   @Then("^User should be redirected to login retry$")
   public void loginRetry() {
      if(driver.getCurrentUrl().equalsIgnoreCase(
         "https://www.facebook.com/login.php?login_attempt=1&lwv=110")){
            System.out.println("Test Pass");
      } else {
         System.out.println("Test Failed");
      }
      driver.close();
   }
}