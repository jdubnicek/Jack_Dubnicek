require 'test_helper'

class MenusControllerTest < ActionDispatch::IntegrationTest
  before(:all) do
    visit root_path
  end

  test "should get Menu show page" do
    first(".edit-order").click
    assert has_selector?(".shopping-cart")
  end

  test "should display dishes added to menu" do
    first(".edit-order").click
    if has_selector?(".edit-menu-dish")
      menu_dishes = all(".edit-menu-dish").collect
      assert_response :success
    else
      assert has_selector?('.text-center', text: "There are no items in your shopping cart. Please ""<a href="/">Go Back</a>"" and add some items to your cart.")
      assert_response :success
    end
  end

end
