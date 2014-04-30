Feature: Sign In

  Scenario: Successful Log In
    Given there is a default admin user
    And I am on the admin login page
    When I fill in "Email" with "admin@example.com"
    When I fill in "Password" with "password"
    And I press "Login"
    Then I should be on the admin dashboard page
    And I should see "Signed in successfully."

  Scenario: Failed Log In
    # PENDING