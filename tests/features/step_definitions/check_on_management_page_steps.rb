Given(/^EuromoneyPLC site is opened$/) do
 @home_page.goto_home_page
end

When(/^user click on Management team menu item$/) do
  @management_team_page = @home_page.goto_management_team_page
end

Then(/^Management team page has been opened correctly$/) do
  @management_team_page.get_title.should include "Management team | Who we are"
end

Then(/^URL for first image is present$/) do
  @management_team_page.first_image_present?.should be true
end

