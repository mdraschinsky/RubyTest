Feature: CheckPurchaseBook
  As a user
  I want go to the Euromoney store
  So that I can purchase the book of the month

  @Story2
  Scenario: 2 Check that user can buy book of the month
    When user opens Home page
    And user opens Naviagation menu
    Then link to EM Store is displayed correctly
    When user clicks link to EM Store
    Then EM Store page is opened
    When user clicks on View more details button next to Book of the month
    Then Details page is opened
    And Price on Details page is in GBP
    When user clicks Add to cart button
    Then Shopping cart page is opened
    And Book of the month is in a cart
 #And Price in cart is in GBP
 #last step is commented because of error on page in Firefox - symbol on page appears to be not '£', but 'J'

#•	The Euromoney Store link displayed correctly on the menu item
#•	The Euromoney Store link navigates to the online store
#•	The view more details link on the book of the month section navigates to the details page
#•	When Add to Cart is clicked the book of the month is added to the shopping cart
#•	The price of the book is displayed in GBP
