class AddStockToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies, :stock, :string
  end
end
