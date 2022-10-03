Feature: Demo Nopcommerce's topmenu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce topmenu
  Background: User is on given URL
  When user type URL"https://demo.nopcommerce.com/"
  And User click on enter button
    Then User is on given URL

    Scenario: Verify that user can navigate to Books category
    When User is on given URL
    And click on Books tab on top menu
    Then Uer is navigated to Books category page

  Scenario: Verify that user can see the  Books category page with filters and list of product
    When User is on given URL
    And click on Books tab on top menu
    And Check filters and list tab
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on Books category page
    Given User is on book category page
    When User is on book category page
    And Check 'sort by' filter is present
    Then 'sort by' filter is available on Book category page

  Scenario: Verify that user can see 'Display' filter on Books category page
    Given User is on book category page
    When User is on book category page
    And Check 'Display' filter is present
    Then 'Display' filter is available on Book category page

  Scenario: Verify that user can see 'Grid' tab on Books category page
    Given User is on book category page
    When User is on book category page
    And Check 'Grid' tab is present
    Then 'Grid' tab is available on Book category page

  Scenario: Verify that user can see 'List' tab on Books category page
    Given User is on book category page
    When User is on book category page
    And Check 'List' tab is present
    Then 'List' tab is available on Book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'sort by' filter
    Given User is on book category page
    When User is on book category page
    And Click on 'sort by' filter
    And Check that 'Name A to Z' selection is present
    Then 'Name A to Z' selection is present in 'sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option  in 'sort by' filter
    Given User is on book category page
    When User is on book category page
    And Click on 'sort by' filter
    And Check that 'Name A to Z' is first in order
    Then 'Name A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected(Note: products are filtered in alphabetical order)
    Given User is on book category page
    When User is on book category page
    And Click on 'sort by' filter
    And select 'Name A to Z' filter
    Then All products are displayed in alphabetical order