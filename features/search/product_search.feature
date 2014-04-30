Feature: Product Search

  Scenario Outline: category equal search
    Given I am logged in as an admin
    And there are <food_product_count> food category products
    And there are <clothes_product_count> clothes category products
    Given I am on the admin products page
    When I fill in "Category" with "food"
    And I press "Filter"
    Then I should see <food_product_count> products

  Examples:
    | food_product_count | clothes_product_count |
    | 2                 | 5                     |
    | 3                 | 5                     |