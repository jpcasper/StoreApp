class RemoveImageFromSupplies < ActiveRecord::Migration
  def change
    remove_column :supplies, :image, :string
  end
end
