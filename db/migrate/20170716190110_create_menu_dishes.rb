class CreateMenuDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_dishes do |t|
      t.references :dish, foreign_key: true
      t.references :menu, foreign_key: true
      t.decimal :unit_price, precision: 12, scale: 3
      t.integer :quantity
      t.decimal :total_price, precision: 12, scale: 3

      t.timestamps
    end
  end
end
