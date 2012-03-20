class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @products = Product.order(:title)
    
    @counter = counter_visit
    
    @cart = current_cart
  end
end
