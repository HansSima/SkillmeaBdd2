Feature: Checkout

  #REQ-001
  Scenario: Checkout banana
    Given the price of a "banana" is 45c
    When A user checkout "banana" 2
    Then the total price should be 90c