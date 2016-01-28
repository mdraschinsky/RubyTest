require 'selenium-webdriver'
require_relative '../../tests/pages/home_page'

class BasePage
  @@driver = nil

  def initialize(driver)
    @@driver = driver
  end

  def goto_home_page
    @@driver.get "http://euromoneyplc.com"
    return HomePage.new(@@driver)
  end

  def get_title
    return @@driver.title
  end

  def quit
    @@driver.quit
  end
end