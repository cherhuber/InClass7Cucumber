Feature: Delete comment 
  As a blog owner
  I can delete comment 
  Scenario: Delete comment
    Given there is a post with 1 comment
    When I am on the "/posts" page
    And I click "Destroy Comment"
    Then the comment should be deleted
