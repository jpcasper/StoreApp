class CartedProduct < ActiveRecord::Base
  validates :user_id, presence: true
  validates :supply_id, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: [ greater_than: 0]

  belongs_to :supply
  belongs_to :order
  belongs_to :user


  def subotal
    supply.price * quantity
  end

  def price
    supply.price
  end

  def name
    supply.name
  end
  
end



