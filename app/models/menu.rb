class Menu < ApplicationRecord
  has_many :menu_dishes
  before_save :update_subtotal

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
