class ChangeStoresTableNameToSupplies < ActiveRecord::Migration
  def change
    rename_table :stores, :supplies
  end
end
