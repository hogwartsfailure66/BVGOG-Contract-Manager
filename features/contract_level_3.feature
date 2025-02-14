Feature: Only allow level >3 users to create contracts

  As a BVCOG admin
  So that I can keep contract data secure
  I want to keep level 3 users from creating or modifying contracts

Background:
  Given db is set up
  Given an example user exists
  Given bvcog_config is set up
  Given I am logged in as a level 3 user

Scenario: Fail to create contract as level 3
  Given I am on the new contract page
  Then I should see "You do not have permission to access this page."

Scenario: Fail to edit contract as level 3
  When I try to edit contract 1
  Then I should see "You do not have permission to access this page."
