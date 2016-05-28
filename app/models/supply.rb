class Supply < ActiveRecord::Base
  
  belongs_to :supplier
  has_many :categorized_supplies
  has_many :categories, through: :categorized_supplies
  has_many :images
  has_many :orders
  


  def sale_message

    if price < 50
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def image_preview_url
    images.first.url
  end
end

