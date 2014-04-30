Feature: Forgot Password

  Scenario: Finding Forgot Password Page
    When there is a default admin user
    And I am on the admin login page
    And I follow "Forgot your password?"
    Then I should be on the forgot password page

  Scenario: Resetting Password for existing account
    # PENDING

  Scenario: Failing to reset Password for non-existing account
    # PENDING