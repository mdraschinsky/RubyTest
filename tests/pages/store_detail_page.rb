class StoreDetailPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def getAddToCartButton
    return @@driver.find_element(:css, ".btn_addtocart input")
  end

  def getGBPPriceCurrency
    return @@driver.find_element(:xpath, "//*[@class='divBookInfo']//p[contains(text(), '£')]")
  end

  def getGBPCurrencyInDropdown
    return @@driver.find_element(:xpath, "//option[contains(text(), '£')]")
  end
end