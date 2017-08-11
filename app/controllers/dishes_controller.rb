class DishesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  def index
    @dishes = Dish.order(:category_id)
    @menu_dish = current_order.menu_dishes.new
  end

  def create
    @dish = current_user.dishes.build(dish_params)
    unless dish_params.include?(:image)
      dish_params[:image] = nil
    authorize @dish
    if @dish.save
      redirect_to dishes_path
    else
      render "new"
    end
  end

  def new
    @dish = current_user.dishes.build
    authorize @dish
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    unless dish_params.include?(:image)
      dish_params[:image] = nil
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
  def set_dish
    @dish = Dish.find(params[:id])
    authorize @dish
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :category_id, :description, :image)
  end

end
