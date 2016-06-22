class Image < ActiveRecord::Base
  validates :url, presence: true
  validates :supply_id, presence: true

  belongs_to :supply
end
