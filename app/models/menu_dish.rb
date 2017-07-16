class MenuDish < ApplicationRecord
  belongs_to :dish
  belongs_to :menu

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :dish_present
  validate :menu_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      dish.price
    end
  end

  def total_price
    unit_price * quantity
  end

  private
  def dish_present
    if dish.nil?
      errors.add(:dish, "is not valid.")
    end
  end

  def menu_present
    if menu.nil?
      errors.add(:menu, "is not a valid menu.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
