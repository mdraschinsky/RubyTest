When(/^user opens Home page$/) do
  @home_page.goto_home_page
end

When(/^user opens Naviagation menu$/) do
  @home_page.get_menu_button.click
end

Then(/^link to EM Store is displayed correctly$/) do
  @home_page.get_store_menu_item.should_not be_nil
end

When(/^user clicks link to EM Store$/) do
  @home_page.get_store_menu_item.click
end

Then(/^EM Store page is opened$/) do
  @driver.switch_to.window(@driver.window_handles[1])
  @store_home_page = StoreHomePage.new @driver
  @store_home_page.get_close_advertisement_button.click

  @driver.current_url.should include "store.euromoneyplc.com"
end

When(/^user clicks on View more details button next to Book of the month$/) do
  @store_home_page.get_details_of_book_of_the_month_buttons.click
end

Then(/^Details page is opened$/) do
  @driver.current_url.should include "store.euromoneyplc.com/product.asp"
  @store_detail_page = StoreDetailPage.new @driver
end

Then(/^Price on Details page is in GBP$/) do
  (@store_detail_page.get_gbp_price_currency.displayed? || @store_detail_page.get_gbp_price_currency_in_dropdown.selected?).should be true
end

When(/^user clicks Add to cart button$/) do
  @store_detail_page.get_add_to_cart_button.click;
end

Then(/^Shopping cart page is opened$/) do
   @driver.current_url.should include "store.euromoneyplc.com/shopping_cart.asp"
   @store_cart_page = StoreCartPage.new @driver
end

Then(/^Book of the month is in a cart$/) do
  @store_cart_page.get_cart_product.displayed?.should be true
end

#
# [Then(@"Price in cart is in GBP")]
# public void ThenPriceInCartIsInGBP()
# {
#     Assert.IsTrue(EMStoreCartPage.CartCurrencies.Count >= 6);
# }