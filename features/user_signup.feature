Feature: Sign up
  In order to use rubyafrica users need to signup so they are RubyAfrica
  members

  Scenario: Sign up with valid details
  Given I go to the signup page
  When I fill in "email_address" with "johnsmith@theagency.com"
  And I click the signup button
  Then I should be a RubyAfrica member