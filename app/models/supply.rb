class Supply < ActiveRecord::Base
  
  validates :name, presence: true
  
  validates :description, presence: true
  validates :description, length: { maximum: 200}

  validates :price, numericality: true
  validates :price, presence: true
  validates :price, format: {with: /\A\d+(?:\.\d{0,2})?\z/, message: "must be a price."}

  belongs_to :supplier
  has_many :categorized_supplies
  has_many :categories, through: :categorized_supplies
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  


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

