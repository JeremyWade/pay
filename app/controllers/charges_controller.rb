class ChargesController < ApplicationController

def create

    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
  )

# Token is created using Checkout or Elements!
# Get the payment token ID submitted by the form:
  token = params[:stripeToken]

# Charge the user's card:
  charge = Stripe::Charge.create(
  :amount => params[:amount],
  :currency => "usd",
  :description => "Example charge",
  :metadata => {"order_id" => 6735},
  :source => token,
)

  purchase = Purchase.create(
    email: params[:stripeEmail], 
    card: params[:stripeToken], 
    amount: params[:amount], 
    description: charge.description, 
    currency: charge.currency,
    customer_id: customer.id, 
    product_id: 1,
    uuid: SecureRandom.uuid
)

  redirect_to purchase

   rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
   end
end 
