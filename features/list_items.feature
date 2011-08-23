Feature: List items
  In order to find my wardrobe images
  I
  want to be able to see a list of image thumbs
  
  Scenario: Listing uploaded items
    Given I have uploaded a image of a skirt
    And I am on the homepage
    When I click on the image of the skirt
    Then I should be on the page for the item


 
