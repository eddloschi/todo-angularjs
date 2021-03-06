Feature: User toggles done status of an item

  In order to know what I already did and what is left to do
  As a user
  I want to be toggle the done status of an item

  @javascript
  Scenario: Mark a not done item as done
    Given The following items exist:
      | description | done  |
      | Learn BDD   | false |
    And I am on the home page
    When I click on the toggle button of the "Learn BDD" item
    And I reload the page
    Then it should be done

  @javascript
  Scenario: Mark a done item as not done
    Given The following items exist:
      | description | done  |
      | Learn BDD   | true  |
    And I am on the home page
    When I click on the toggle button of the "Learn BDD" item
    And I reload the page
    Then it should not be done
