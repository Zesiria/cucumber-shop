Feature: Remove items quantity in stock
  As a Shop Owner, I want to keep tracking
  of product remaining stock.
  
Background:
  Given the store is ready to service customers
  And a product "Apple" with price 25.00 and stock of 50 exists
  And a product "Sandwich" with price 20.00 and stock of 15 exists

Scenario: Buy 1 quantity
  When I buy "Apple" with quantity 1
  Then the stock of "Apple" should be 49

Scenario: Buy multiple quantity
  When I buy "Apple" with quantity 20
  Then the stock of "Apple" should be 30

Scenario: Buy multiple items
  When I buy "Apple" with quantity 5
  And I buy "Sandwich" with quantity 10
  Then the stock of "Apple" should be 45
  And the stock of "Sandwich" should be 5

