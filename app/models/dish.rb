class Dish < ApplicationRecord
  has_many :menu_dishes, dependent: :destroy
  belongs_to :category

  # def initialize(params)
  #   @name = params[:name]
  #   @price = params[:price]
  #   @category_id = params[:category_id]
  #   @description = params[:description]
  # end

end
