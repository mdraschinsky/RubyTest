class StoreCartPage < BasePage
  def initialize(driver)
    super(driver)
  end

  def getCartProduct
    return @@driver.find_element(:css, "form[name='cart'] a[href*='product']")
  end

  def getCartCurrencies
    return @@driver.find_elements(:xpath, "//form[@name='cart']//*[contains(text(), '£')]")
  end
end