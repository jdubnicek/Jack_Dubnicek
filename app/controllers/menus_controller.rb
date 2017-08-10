class MenusController < ApplicationController
  def show
    @menu_dishes = current_order.menu_dishes
  end
end
