class MenuDishesController < ApplicationController

  def create
    @menu = current_order
    @menu_item = @menu.menu_dishes.new(menu_dish_params)
    existing_menu = @menu.menu_dishes.order(category_id: params[:menu_dish][:dish_id][:category_id])
    if existing_menu.count >= 1
      existing_menu.last.update_column(:quantity, existing_menu.last.quantity + params[:menu_dish][:quantity].to_i)
    else
      @menu.save!
    end
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
    session[:menu_id] = @menu.id
  end

  def update
    @menu = current_order
    @menu_item = @menu.menu_dishes.find(params[:id])
    @menu_item.update_attributes(menu_dish_params)
    @menu_dishes = @menu.menu_dishes
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  def destroy
    @menu = current_order
    @menu_item = @menu.menu_dishes.find(params[:id])
    @menu_item.destroy
    @menu_dishes = @menu.menu_dishes
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  private
  def menu_dish_params
    params.require(:menu_dish).permit(:quantity, :dish_id)
  end

end
