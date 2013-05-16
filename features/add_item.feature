Feature: User adds an item to be done

  In order to know what I have to do
  As a user
  I want to add an item to my todo list

  @javascript
  Scenario: New item is added
    Given I am on the home page
    When I add the item "Learn BDD"
    And I reload the page
    Then I should see the following items:
      | description |
      | Learn BDD   |
    And it should not be done

  @javascript
  Scenario: Blank input
    Given I am on the home page
    When I add the item " "
    Then I should see an empty todo list
