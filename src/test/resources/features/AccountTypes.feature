Feature: Account types

  Scenario: Driver user
    Given the user logged in as "driver"
    When the user navigates to "Activities" "Calendar Events"
    Then the title contains "Calendar Events - Activities"

  Scenario: Sales manager user
    Given the user logged in as "sales manager"
    When the user navigates to "Customers" "Accounts"
    Then the title contains "Accounts - Customers"

  Scenario: Store manager user
    Given the user logged in as "store manager"
    When the user navigates to "Customers" "Contacts"
    Then the title contains "Contacts - Customers"

#  Scenario: Driver user
#    Given the user logged in as "driver"
#
#  Scenario: Sales manager user
#    Given the user logged in as "sales manager"
#
#  Scenario: Store manager user
#    Given the user logged in as "store manager"
  #  Scenario: Store manager user
#    Given the user logged in as "admin"

  @wip
  Scenario Outline: Different user types
    Given the user logged in as "<userType>"

    Examples:
      | userType      |
      | driver        |
      | admin         |
      | store manager |
      | sales manager |
