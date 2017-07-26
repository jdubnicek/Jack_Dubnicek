class DishesController < ApplicationController

  def index
    @dishes = Dish.all
    @menu_dish = current_order.menu_dishes.new
  end

  def create
    @dish = Dish.new(params)
    if @dish.save
      redirect_to dishes_path
    else
      render "new"
  end

  def new
    @dish = Dish.new
  end

  def show
    @dish = Dish.find(:id)
  end

  def edit
    @dish = Dish.find(:id)
  end

  def update
    @dish = Dish.find(:id)
  end

  def destroy
    @dish = Dish.find(:id)
  end

  private
  def document_params
    params.require(:dish).permit(:name, :price, :category_id, :description)
  end

end
