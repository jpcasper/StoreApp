class Order < ActiveRecord::Base
  belongs_to :supply
  belongs_to :user
  has_many :carted_products

  def calculate_subtotal(item_price)
    self.subtotal = item_price * quantity
  end

  def calculate_tax
   self.tax = subtotal * 0.09
  end

  def calculate_total 
    self.total = subtotal + tax
  end

  def calculate_figures(item_price)
    calculate_subtotaL(item_price)
    calculate_tax
    calculate_total
  end
end
