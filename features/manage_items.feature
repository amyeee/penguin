Feature: Manage items
  In order to easily share my wardrobe
  I
  want to be able to upload pictures of my clothes
  
  Scenario: upload new item
    Given I am on the homepage
    # Then show me the page
    When I upload a picture of an item
    Then I should be on the page for the item 
    And I should see the picture I uploaded

    

 
