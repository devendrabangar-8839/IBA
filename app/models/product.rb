class Product < ApplicationRecord
  belongs_to :brand_segment
  belongs_to :brand

end
