class Category < ActiveRecord::Base
  
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :categorized_supplies
  has_many :supplies, through: :categorized_supplies
end
