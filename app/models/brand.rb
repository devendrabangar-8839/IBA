class Brand < ApplicationRecord
  has_many :brand_segments
  has_many :product

  validates :brand_name, presence: true, uniqueness: true
end
