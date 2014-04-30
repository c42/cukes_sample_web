Feature: Product Search

  @javascript
  Scenario: category equal search
    Given I am logged in as an admin
    And there are 2 food category products
    And there are 2 clothes category products
    Given I am on the admin products page
    When I fill in "Category" with "food"
    And I press "Filter"
    Then I should see 2 products