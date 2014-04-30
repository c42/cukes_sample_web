Feature: Forgot Password

  Scenario: Finding Forgot Password Page
    Given I am on the admin login page
    When I follow "Forgot your password?"
    Then I should be on the forgot password page

  Scenario: Resetting Password for existing account
    Given there is a default admin user
    And I am on the forgot password page
    When I fill in "Email" with "admin@example.com"
    And I press "Reset My Password"
    Then I should be on the admin login page
    And I should see "You will receive an email with instructions on how to reset your password in a few minutes."

  Scenario: Failing to reset Password for non-existing account
    Given there is a default admin user
    And I am on the forgot password page
    When I fill in "Email" with "someone_else@example.com"
    And I press "Reset My Password"
    Then I should be on the password submit page
    And I should see "not found"