class AddSupplierIdToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies, :supplier_id, :integer
  end
end
