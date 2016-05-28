class ChangePriceInSupplies < ActiveRecord::Migration
  def change
    change_column :supplies, :price, :decimal, precision: 6, scale: 2
  end
end
