Feature: Checkout

  #REQ-001
  Scenario: Checkout banana
    Given the price of a "banana" is 45c
    When A user checkout "banana" 2
    Then the total price should be 90c

  Scenario: Checkout banana and apple
    Given the price of a "banana" is 45c
    And the price of a "apple" is 50c
    When A user checkout "banana" 2
    And A user checkout "apple" 3
    Then the total price should be 240c

  Scenario Outline: Checkout banana and apple - 2
    Given the price of a "banana" is <bananaPrice>c
    And the price of a "apple" is <applePrice>c
    When A user checkout "banana" 1
    And A user checkout "apple" <appleCount>
    Then the total price should be <total>c

    Examples:
      | bananaPrice | applePrice | total | appleCount |
      | 80          |120         |680    | 5          |
      | 20          |140         |160    | 2          |
      | 45          |135         |315    | 2          |