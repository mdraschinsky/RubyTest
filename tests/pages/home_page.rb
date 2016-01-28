require_relative '../../tests/pages/base_page'
require_relative '../../tests/pages/management_team_page'

class HomePage < BasePage
  def initialize(driver)
    super(driver)
  end

  def get_menu_button
    return @@driver.find_element(:css, 'span.icon-nav')
  end

  def get_who_we_are_menu_item
      return @@driver.find_element(:css, '#menu > li:nth-child(1)')
  end

  def get_management_team_menu_item
    return @@driver.find_element(:css, '#menu > li:nth-child(1) li:nth-child(4)')
  end

  def get_store_menu_item
      return @@driver.find_element(:css, '#menu > li:last-child a')
  end

  def goto_management_team_page
    get_menu_button.click
    get_who_we_are_menu_item.click
    get_management_team_menu_item.click
    return ManagementTeamPage.new @@driver
  end
end