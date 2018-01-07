class PagesController < ApplicationController
  def home
  	@product = Product.find_by_sku("Brand1")
  end
end
