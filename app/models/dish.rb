class Dish < ApplicationRecord
  has_many :menu_dishes, dependent: :destroy 
  belongs_to :category
end
