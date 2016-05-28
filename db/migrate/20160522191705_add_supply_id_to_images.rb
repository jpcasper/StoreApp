class AddSupplyIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :supply_id, :integer
  end
end
