require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  before(:all) do
    visit root_path
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should display all dishes" do
    get dishes_path
    dishes = all(".new_menu_dish").collect
    db_dishes = Dish.all
    assert dishes.count == db_dishes.count
  end

end
