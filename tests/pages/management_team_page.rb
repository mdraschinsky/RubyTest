class ManagementTeamPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def getFirstImageOfManagementTeam
    return @@driver.find_element(:css, '.w_content_generic:nth-child(2) img')
  end
end