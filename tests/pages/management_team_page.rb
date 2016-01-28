require_relative '../../tests/pages/base_page'

class ManagementTeamPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def is_first_image_present
    element = @@driver.find_element(:css, '.w_content_generic:nth-child(2) img')
    attribute = get_attribute('src')
    if attribute.nil? || attribute.empty?
      return false
    end

    return true
  end
end