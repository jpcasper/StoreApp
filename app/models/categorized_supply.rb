class CategorizedSupply < ActiveRecord::Base
  belongs_to :supply
  belongs_to :category
end
