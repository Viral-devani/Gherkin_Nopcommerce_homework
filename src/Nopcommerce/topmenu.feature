Feature: Demo nopcommerce's topmenu acceptance criteria
  As a user, I would like to check acceptance criteria of nopcommmerce topmenu

  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And  User click on Enter Button
    Then User is on given URL

    Scenario: Verify that user can navigate to Books category
      When User is on given URL
      And  click on Books tab on top menu
      Then User is navigated to books category page

  Scenario: Verify that user can navigate to Books category page with filters and list of products
    When User is on given URL
    And  click on Books tab on top menu
    And  Check filters and list tab.
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'sort by' filter on  Books category
    Given User is on Books category page
    When  User is on Books category page
    And   check 'sort by' filter is present
    Then  'Sort by' filter is available on Book category page

  Scenario: Verify that user can see 'Display' filter on  Books category
    Given User is on Books category page
    When  User is on Books category page
    And   check 'Display' filter is present
    Then  'Display' filter is available on Book category page

  Scenario: Verify that user can see 'Grid' tab on  Books category
    Given User is on Books category page
    When  User is on Books category page
    And   check 'Grid' tab is present
    Then  'Grid' tab is available on Book category page

  Scenario: Verify that user can see 'List' tab on  Books category
    Given User is on Books category page
    When  User is on Books category page
    And   check 'List'tab is present
    Then  'List' tab is available on Book category page

  Scenario: Verify that user can see 'sort by'Name: A to Z'selection is present in 'sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Click on 'sort by' filter is present
    Then  'Name: A to Z'selection is present in 'sort by' filter


  Scenario: Verify that user can see 'sort by'Name: A to Z' is first option in  in 'sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Click on 'sort by' filter is present
    Then  'Name: A to Z'is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expepected(Note:Product are filtered in alphabetical order)
    Given User is on Books category page
    When  User is on Books category page
    And   Click on 'sort by' filter
    Then  All products are displayed in alphabetical order








































