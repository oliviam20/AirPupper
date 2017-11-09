class ChargesController < ApplicationController

  before_action :set_dog

  def new
  end

  def create
    # Amount in cents
    @amount = @dog

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

    def set_dog
      @dog = Dog.find(params[:dog_id])
    end
end
