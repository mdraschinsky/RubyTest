require_relative '../../tests/pages/base_page'

class HomePage < BasePage
  def initialize(driver)
    super(driver)
  end

  def getMenuButton
    return @@driver.find_element(:css, 'span.icon-nav')
  end

  def getWhoWeAreMenuItem
      return @@driver.find_element(:css, '#menu > li:nth-child(1)')
  end

  def getManagementTeamMenuItem
    return @@driver.find_element(:css, '#menu > li:nth-child(1) li:nth-child(4)')
  end

  def getStoreMenuItem
      return @@driver.find_element(:css, '#menu > li:last-child a')
  end
end