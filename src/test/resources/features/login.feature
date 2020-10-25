@login
Feature: Users should be able to login

  Background:
    Given the user is on the login page

  @Driver
  Scenario: Login as a driver
    When the user enters the driver information
    Then the user should be able to login
  @Sales_manager
  Scenario: Login as a sales manager
    When the user enters the sales manager information
    Then the user should be able to login

  @Store_manager
  Scenario: Login as a store manager
    When the user enters the store manager information
    Then the user should be able to login

  @hmwrk
  Scenario: login as a driver
    And the user logged in as "driver"
    Then the user should be able to login
    And the title contains "Dashboard"

