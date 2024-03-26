class BrandsController < ApplicationController
  def create
    brand = Brand.new(brand_name: params['brand_name'])
    if brand.save
      redirect_to new_product_path, notice: "Brand Added"
    else
      redirect_to new_product_path, notice: brand.errors.full_messages
    end
  end
end