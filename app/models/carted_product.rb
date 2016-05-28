class CartedProduct < ActiveRecord::Base
  belongs_to :supply
  belongs_to :order
  belongs_to :user
end



