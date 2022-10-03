Feature: Bookcategory

Background: I should be able to see homepage
  Given I enter url "https://demo.nopcommerce.com/" in browser
  And  I am on the page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
   When I am on homepage
   Then I should be able to see top menu tabs on homepage with categories
   When I am on homepage
    Then I should be able to see top menu tabs with "<categories>"
    Examples:
    |categories         |
    |Computer           |
    |Electonics         |
    |Appereal           |
    |Digital downloads  |
    |Books              |
    |jewellery          |
    |Gift card          |

    Scenario Outline: I should be able to see Book page with filters
      When I select Book category from top menu tab on homepage
      Then I should be navigated to book category
      And I should be able to see "<Filters>"

      Examples:
      |Filters    |
      |Sort by    |
      |Display    |
      |the Grid   |
      |List tab   |

      Scenario Outline: I should be able to see list of terms of each filter
        Given I am on book page
        When I click on "<Filter>"
        And I click on any "<option>"
        Then I should be able to choose any filter option from the list
        And I should be able to see "<result>"

        Examples:
        |Filter         |option                 |result
        |sort by        |Name A to Z            |sorted product with the name in alphabetical order A to Z|
        |sort by        |Name Z to A            |sorted product with the name in alphabetical order Z to A|
        |sort by        |price: low to high     |sorted product with the price in descending order        |
        |sort by        |price: high to low     |sorted product with the price in ascending order         |
        |sort by        |created on             |recently added product should be show first              |
        |Display        |3                      |3 product on a page                                      |
        |Display        |6                      |6 product on a page                                      |
        |Display        |9                      |9 product on a page                                      |


        Scenario Outline: I should be able to see product display format type as per given picture in srs docs
          Given I am on book page
          When I click on "<display format icon>"
          Then I should be able to see product display format according display format type as per given picture in SRS document
          Examples:
          |display format icon|
          |Grid               |
          |List               |









