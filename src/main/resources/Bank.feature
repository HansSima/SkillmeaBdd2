Feature: Bank

  Scenario: Bank account balance
    Given Bank account with 1000 kc
    Then A user account balance is 1000 kc

  Scenario Outline: Bank account tranfer
    Given Bank account with <inicialBalance> kc
    When A user withdraw <withdrawAmount> kc
    And A user transfer <tranferAmount> kc to this account
    Then A user account balance is <expectedBalance> kc

  Examples:
    | inicialBalance | withdrawAmount | tranferAmount | expectedBalance |
    | 500            | 250            |1250           |1500             |
    | 1000           | 500            |1000           |1500             |
    | 5000           | 6000           |1500           |-500             |
    | -5000          | 0              |6000           |1000             |

  Scenario Outline: Bank account tranfer - 2
    Given Bank account with <inicialBalance> kc
    When A user transfer <tranferAmount> kc to this account
    And A user withdraw <withdrawAmount> kc
    Then A user account balance is <expectedBalance> kc

    Examples:
      | inicialBalance | withdrawAmount | tranferAmount | expectedBalance |
      | 500            | 250            |1250           |1500             |
      | 1000           | 500            |1000           |1500             |
      | 5000           | 6000           |1500           |500             |
      | -5000          | 0              |6000           |1000             |

  ##################################################################################

  Scenario: Multiple bank account transfer
    Given Bank account with 1000 kc
    And another Bank account with 2000 kc
    When A user transfer from first bank account to second one 2000 kc
    Then A user account balance is 1000 kc
    And A user second account balance is 4000 kc