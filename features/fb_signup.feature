Feature: fb_signup
	As a new user of facebook
	I want to create new facebook account
	Because I want to connect with friends

Scenario: new user signs up to facebook
	Given I am a new user
	And I am on facebook homepage
    And I fill in the following sign up information for the Sign Up pane:
      | First-Name | Last-Name |  Email           | Re-enter-Email  | Password |
      | fDude      | lDude     |  dude@google.com | dude@google.com | Badf00d  |
    And I select "Male" from "sex"
    And I select "Jan" from "birthday_month"
    And I select "1" from "birthday_day"
    And I select "1980" from "birthday_year"
    When I click "Sign Up" in the Sign Up pane
    Then I should see "Are your friends already on Facebook?"


  Scenario: existing user signs up to facebook
	Given I am an existing user
	And I am on facebook homepage
    And I fill out the sign up form
    When I click "Sign Up" in the Sign Up pane
    Then I should see "Confirm Your Email Address"

