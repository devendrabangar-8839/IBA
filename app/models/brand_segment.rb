class BrandSegment < ApplicationRecord
  belongs_to :brand
  validates :segment, presence: true, uniqueness: true
end
