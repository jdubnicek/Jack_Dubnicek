class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.decimal :subtotal, precision: 12, scale: 3
      t.decimal :total, precision: 12, scale: 3
      t.references :order_status, foreign_key: true

      t.timestamps
    end
  end
end
