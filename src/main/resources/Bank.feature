Feature: Bank

  Scenario: Bank account balance
    Given Bank account with 1000 kc
    Then A user account balance is 1000 kc

  Scenario: Bank account tranfer
    Given Bank account with 500 kc
    When A user withdraw 250 kc
    And A user transfer 1250 kc to this account
    Then A user account balance is 1500 kc