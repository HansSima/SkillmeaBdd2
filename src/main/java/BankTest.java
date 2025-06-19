import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import product.BankAccount;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class BankTest {

    BankAccount firstBankAccount;

    @Given("Bank account with {int} kc")
    public void bankAccountWithKc(int initialBalance) {
        firstBankAccount = new BankAccount(initialBalance);
    }

    @Then("A user account balance is {int} kc")
    public void aUserAccountBalanceIsKc(int expectedBalance) {
        assertEquals(expectedBalance, firstBankAccount.getAccountBalance());
    }

    @When("A user withdraw {int} kc")
    public void aUserWithdrawKc(int withdrawAmount) {
        firstBankAccount.withdraw(withdrawAmount);
    }

    @And("A user transfer {int} kc to this account")
    public void aUserTransferKcToThisAccount(int transferAmount) {
        firstBankAccount.transfer(transferAmount);
    }
}
