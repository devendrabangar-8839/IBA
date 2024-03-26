class ProductsController < ApplicationController
  before_action :get_input_data, only: [:new, :edit]
  require 'csv'

  def index
    @products = Product.includes(:brand, :brand_segment)
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    if product.save
      redirect_to new_product_path, notice: "Product Added"
    else
      redirect_to new_product_path, notice: product.errors.full_messages
    end
  end

  def edit
    @product = Product.find_by_id(params['id'])
  end

  def update
    @product = Product.find_by_id(params['id'])
    if @product.update(product_params)
      redirect_to products_path, notice: "Product Updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by_id(params['id'])
    if product.delete
      redirect_to products_path, notice: "Product Deleted"
    else
      render :index, notice: product.errors.full_messages
    end
  end

  def bulk_upload
    if params[:file].present?
      begin
        product = []
        CSV.foreach(params[:file].path, headers: true) do |row|
          product << { brand_id: row['brand_id'], brand_segment_id: row["brand_segment_id"], model_no: row["model_no"],  product_detail: row["product_detail"], warranty_details: row["warranty_details"], price: row["price"], review_video_link: row["review_video_link"] }
        end
        product = Product.create!(product)
        redirect_to new_product_path, notice: "#{product.count} : Bulk Product Added"
      rescue StandardError => e
        redirect_to new_product_path, notice: "Error importing file: #{e.message}" 
      end
    else
      flash[:error] = "Please upload a file"
      redirect_to new_product_path
    end
  end  

  private
  def product_params
    params.require(:product).permit(:brand_id, :brand_segment_id, :model_no, :product_detail, :warranty_details, :price, :review_video_link)    
  end
end
