class Category < ActiveRecord::Base
  has_many :categorized_supplies
  has_many :supplies, through: :categorized_supplies
end
