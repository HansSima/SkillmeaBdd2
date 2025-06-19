import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import product.BankAccount;

public class BankTest {

    BankAccount firstBankAccount;

    @Given("Bank account with {int} kc")
    public void bankAccountWithKc(int initialBalance) {
        firstBankAccount = new BankAccount(initialBalance);
    }

    @Then("A user account balance is {int} kc")
    public void aUserAccountBalanceIsKc(int expectedBalance) {

    }
}
