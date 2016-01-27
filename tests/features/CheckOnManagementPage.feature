Feature: ChecksOfManagementPage
  As a user
  I want to click the management team menu items
  So that we can see that the correct page is displayed


  @Story1
  Scenario: 1 Checks of Management page
    Given  EuromoneyPLC site is opened
    When user click on Management team menu item
    Then Management team page has been opened correctly
    And URL for first image is present

#•	Management team page is displayed correctly
#•	Verify that the URL of the first image is present.