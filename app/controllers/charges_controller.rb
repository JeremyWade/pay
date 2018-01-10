class ChargesController < ApplicationController

def create
  product = Product.find_by_sku("BrandToolkit")

    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :card => params[:stripeToken],
    :plan => "BrandToolkit")

# Token is created using Checkout or Elements!
# Get the payment token ID submitted by the form:
  token = params[:stripeToken]

# Charge the user's card:
  #charge = Stripe::Charge.create(
  #:amount => product.price,
  #:currency => "usd",
  #:description => "Example charge",
  #:metadata => {"order_id" => 6735},
  #:source => token )

  purchase = Purchase.create(
    email: params[:stripeEmail], 
    amount: product.price, 
    currency: "usd",
    customer_id: customer.id, 
    product_id: product.id,
    uuid: SecureRandom.uuid
)

  redirect_to purchase

   rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
   end
end 
