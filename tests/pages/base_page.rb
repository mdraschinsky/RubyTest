require 'selenium-webdriver'

class BasePage
  @@driver = nil

  def initialize(driver)
    @@driver = driver
  end

  def getPageTitle
    return @@driver.title
  end

  def quit
    @@driver.quit
  end
end