class PagesController < ApplicationController
  def home
  	@product = Product.find_by_sku("BrandToolkit")
  end
end
