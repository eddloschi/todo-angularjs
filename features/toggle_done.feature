Feature: User toggles done status of an item

  In order to know what I already did and what is left to do
  As a user
  I want to be toggle the done status of an item

  Scenario: Mark a not done item as done
    Given The following items exist:
      | description | done  |
      | Learn BDD   | false |
    And I am on the home page
    When I click on the toggle button of the "Learn BDD" item
    Then it should be done

  Scenario: Mark a done item as not done
    Given The following items exist:
      | description | done  |
      | Learn BDD   | false |
    And I am on the home page
    When I click on the toggle button of the "Learn BDD" item
    Then it should not be done
