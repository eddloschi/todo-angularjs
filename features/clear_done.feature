Feature: User clears done items

  In order to keep my todo list more organized
  As a user
  I want to remove all items marked as done

  @javascript
  Scenario: One done item
    Given The following items exist:
      | description | done  |
      | Learn BDD   | false |
      | Learn Scrum | false |
      | Learn Ruby  | true  |
    And I am on the home page
    When I click on the "Clear Done" button
    And I reload the page
    Then I should see the following items:
      | description |
      | Learn BDD   |
      | Learn Scrum |
    And I should not see the following items:
      | description |
      | Learn Ruby  |

  @javascript
  Scenario: All items done
    Given The following items exist:
      | description | done |
      | Learn BDD   | true |
      | Learn Scrum | true |
      | Learn Ruby  | true |
    And I am on the home page
    When I click on the "Clear Done" button
    And I reload the page
    Then I should see an empty todo list

  @javascript
  Scenario: No done items
    Given The following items exist:
      | description | done  |
      | Learn BDD   | false |
      | Learn Scrum | false |
      | Learn Ruby  | false |
    And I am on the home page
    When I click on the "Clear Done" button
    And I reload the page
    Then I should see the following items:
      | description |
      | Learn BDD   |
      | Learn Scrum |
      | Learn Ruby  |
