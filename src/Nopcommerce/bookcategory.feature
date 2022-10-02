Feature: Bookcatogory
  Background: I should be able to see homepage
    Given I enter URL"https://demo.nopcommerce.com/" in browser
    And I am on home page
    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When I am on home page
      Then I should be able to see top menu tabs with "<categories>"
      Examples:
      |Categories|
      |Computer|
      |Electronic|
      |Apparel|
      |Digital downloads|
      |Books|
      |jewellery|
      |Gift card|
      Scenario Outline: I should be able to see book page with filters
        When I select book category from top menu tabs on home page
        Then I should be navigated to book category
        And  I should be able to see "<filter>"
        Examples:
        |filters|
        |short by|
        |Display|
        |the grid|
        |List tab|
      Scenario Outline: I should be able to see list of terms of each filter
        Given I am on book page
        When  I click on "<fitler>"
        Then  I should be able to see "<list>" in dropdown menu
        Examples:
        |filter       |list                                                             |
        |sort by      |Name: A to Z,price : Low to High, price : High to low, created on|
        |Display      |3,6,9                                                            |
        Scenario Outline: I should be able to choose any filter option with specific result
          Given       I am on book page
          When        I click on "<filter>"
          And         I click on "<option>"
          Then        I should be able to choose any filter option from the list
          And         I should be able to see"<result>"
          Examples:
          |filter |   option                     |  result
          |sort by|   Name: A to Z               | sorted product with the product name in alphabetical order A to Z
          |sort by|   Name: Z to A               | sorted product with the product name in alphabetical order Z to A
          |sort by|   Price:low to high          | sorted product with the price in descending order
          |sort by|   Price:High to low          | sorted product with the price in ascending order
          |sort by|   Created on                 | recently added product should be show first
          |Display|   3                          | 3 products on page
          |Display|   6                          | 6 products on page
          |Display|   9                          | 9 products on page
          Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
            Given I am on book page
            When  I click on "<display format icon>"
            Then  I should be able to see product display format according display format type as per given picture in srs document
            Examples:
            |display format icon|
            |Grid               |
            |List               |