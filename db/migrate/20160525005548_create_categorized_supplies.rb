class CreateCategorizedSupplies < ActiveRecord::Migration
  def change
    create_table :categorized_supplies do |t|
      t.integer :supply_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
