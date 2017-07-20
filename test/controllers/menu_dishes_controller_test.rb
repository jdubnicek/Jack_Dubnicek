require 'test_helper'

class MenuDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    post menu_dishes_path
    assert_response :success
  end

  test "should get update" do
    get menu_dish_update_path
    assert_response :success
  end

  test "should get destroy" do
    get delete_dish_path
    assert_response :success
  end

end
