class MenusController < ApplicationController
  def show
    @menu_dishes = current_order.menu_dishes
  end
  # def show
  #   @menu = Menu.find(session[:menu_id])
  #   @menu_dishes = @menu.menu_dishes.order(dish_id.category_id)
  # end
end
