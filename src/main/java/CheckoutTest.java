import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import product.Checkout;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class CheckoutTest {

    private Checkout myCheckout;

    @Before
    public void totoSeProvedePredKazdymTestem(){
        myCheckout = new Checkout();
    }

    @After
    public void totoSeProvedePoKazdemTestu(){
        myCheckout = null;
    }

    @Given("the price of a {string} is {int}c")
    public void thePriceOfAIsC(String name, int price) {
        myCheckout.addItem(name, price);
    }

    @When("A user checkout {string} {int}")
    public void aUserCheckout(String name, int count) {
        myCheckout.scanItems(name, count);
    }

    @Then("the total price should be {int}c")
    public void theTotalPriceShouldBeC(int expectedTotalPrice) {
        assertEquals(expectedTotalPrice, myCheckout.totalCart());
    }
}
