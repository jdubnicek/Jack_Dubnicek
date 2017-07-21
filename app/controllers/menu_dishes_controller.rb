class MenuDishesController < ApplicationController
  def create
    @menu = current_order
    @menu_item = @menu.menu_dishes.new(menu_dish_params)
    existing_menu = @menu.menu_dishes.where(dish_id: params[:menu_dish][:dish_id])
    if existing_menu.count >= 1
      existing_menu.last.update_column(:quantity, existing_menu.last.quantity + params[:menu_dish][:quantity].to_i)
    else
      @menu.save
    end
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
