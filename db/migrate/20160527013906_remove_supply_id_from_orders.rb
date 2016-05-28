class RemoveSupplyIdFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :supply_id, :integer
  end
end
