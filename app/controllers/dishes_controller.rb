class DishesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
    @dishes = Dish.order(:category_id)
    @menu_dish = current_order.menu_dishes.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dishes_path
    else
      render "new"
    end
  end

  def new
    @dish = Dish.new
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(dish_params)
      redirect_to dishes_path
    else
      render "edit"
    end
  end

  def destroy
    @dish = Dish.find(params[:id]).destroy
    redirect_to dishes_path
  end

  private
  def dish_params
    params.require(:dish).permit(:name, :price, :category_id, :description)
  end

end
