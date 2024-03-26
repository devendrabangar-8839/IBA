class BrandSegmentsController < ApplicationController
  def create
    segment = BrandSegment.new(segment: params['segment'], brand_id: params['brand_id'])
    if segment.save
      redirect_to new_product_path, notice: "segment Added"
    else
      redirect_to new_product_path, notice: segment.errors.full_messages
    end
  end
end