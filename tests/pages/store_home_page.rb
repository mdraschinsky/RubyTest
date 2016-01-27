require_relative '../../tests/pages/base_page'

class StoreHomePage < BasePage
  def initialize(driver)
    super(driver)
  end

  def getDetailsOfBookOfTheMonthButoons
    return @@driver.find_element(:xpath, "//td[h2[span[text() = 'Book of the Month']]]/table//input")
  end

  def getCloseAdvertisementButton
    return @@driver.find_element(:css, "a.closePopup")
  end
end