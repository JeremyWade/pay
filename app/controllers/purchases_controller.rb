class PurchasesController < ApplicationController
	def show
		@purchases = Purchase.find(params[:id])
   end 
end
