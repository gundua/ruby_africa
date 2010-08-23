Feature: Sign up
  Visitors need to signup to become RubyAfrica members


  Scenario: Sign up with valid details
  Given I go to the signup page

  When I fill in "Email address" with "johnsmith@theagency.com"
  And I press "Sign up"

  Then I should be a RubyAfrica member