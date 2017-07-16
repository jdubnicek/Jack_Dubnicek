require 'test_helper'

class MenuDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get menu_dishes_create_url
    assert_response :success
  end

  test "should get update" do
    get menu_dishes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get menu_dishes_destroy_url
    assert_response :success
  end

end
