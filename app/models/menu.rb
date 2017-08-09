class Menu < ApplicationRecord
  # belongs_to :order_status
  has_many :menu_dishes
  # before_validation :set_order_status, on: :create
  before_save :update_subtotal
  scope :ordered, -> { joins(:dishes).order('dish.category_id')}

  def subtotal
    menu_dishes.collect { |d| d.valid? ? (d.quantity * d.unit_price) : 0 }.sum
  end

private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
