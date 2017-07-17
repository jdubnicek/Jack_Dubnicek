class MenuDishesController < ApplicationController
  def create
    @menu = current_order
    @menu_item = @menu.menu_dishes.new(menu_dish_params)
    @menu.save
    session[:menu_id] = @menu.id
  end

  def update
    @menu = current_order
    @menu_item = @menu.menu_dishes.find(params[:id])
    @menu_item.update_attributes(menu_dish_params)
    @menu_items = @menu.menu_dishes
  end

  def destroy
    @menu = current_order
    @menu_item = @menu.menu_dishes.find(params[:id])
    @menu_item.destroy
    @menu_items = @menu.menu_dishes
  end

  private
  def menu_dish_params
    params.require(:menu_dish).permit(:quantity, :dish_id)
  end
end
