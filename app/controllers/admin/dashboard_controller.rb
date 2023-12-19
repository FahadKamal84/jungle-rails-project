class Admin::DashboardController < ApplicationController
  def show
    @products = 0
    all_products = Product.all
    all_products.each do |product|
      @products += product.quantity
    end  
  end
end
