class ChangeDescriptionInSupplies < ActiveRecord::Migration
  def change
    change_column :supplies, :description, :text
  end
end
