class DishesController < ApplicationController
  def index
    @dishes = Dish.all
    @menu_dish = current_order.menu_dishes.new
  end
end
