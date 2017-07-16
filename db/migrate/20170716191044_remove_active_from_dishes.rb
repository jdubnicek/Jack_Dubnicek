class RemoveActiveFromDishes < ActiveRecord::Migration[5.0]
  def change
    remove_column :dishes, :active, :boolean
  end
end
