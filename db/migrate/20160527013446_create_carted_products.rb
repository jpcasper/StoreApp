class CreateCartedProducts < ActiveRecord::Migration
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.integer :supply_id
      t.integer :quantity
      t.string :status, default: "carted"
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
