class AddSupplyIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :supply_id, :integer
  end
end
