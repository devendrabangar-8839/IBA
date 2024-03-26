class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning

  def get_input_data
    @brands = Brand.pluck(:brand_name, :id)
    @segments = BrandSegment.pluck(:segment, :id)    
  end

  private   
  def current_user   
    @current_user = session[:user_id].present? ? User.find(session[:user_id]) : nil
    unless @current_user
      redirect_to root_path , notice: "Book not found"  
    end  
  end   
  helper_method :current_user   
end
