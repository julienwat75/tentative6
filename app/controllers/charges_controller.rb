class ChargesController < ApplicationController


  def new
end

def index

end

def create
  # Amount in cents
  
  @parametre=params
  @info=params[:stripeToken]
  @amount=params[:heure1]

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
    
  )

  #save_stripe_customer_id(user, customer.id)

  @chid=charge.id



rescue Stripe::CardError => e
  flash[:error] = e.message
  format.html { redirect_to charges_path, :notice => 'Event was successfully upgraded.' }


end

end