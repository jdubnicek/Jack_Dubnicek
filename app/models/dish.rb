class Dish < ApplicationRecord
  has_many :order_items
end
