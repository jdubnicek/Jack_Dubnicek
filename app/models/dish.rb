class Dish < ApplicationRecord
  has_many :order_items
  belongs_to :category
end
