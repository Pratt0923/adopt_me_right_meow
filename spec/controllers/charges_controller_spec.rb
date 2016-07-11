require 'rails_helper'
require 'spec_helper'

describe ChargesController do

    it 'can find cat price' do
    # get :cat
    #
    # params = {
    #   :name => "name",
    #   :description => "description",
    #   :breed => "breed", :price => "100.00",
    #   :age => 2
    #
    # }
    #
    #   expect(Cat.first.price).to eq("100.00")

    end


    it 'can purchase a cat' do

    end
  #   def create
  #     @cat = Cat.find(params[:cat_id])
  #     @amount = @cat.price
  #
  #     customer = Stripe::Customer.create(
  #       :email => params[:stripeEmail],
  #       :source  => params[:stripeToken]
  #     )

  #     charge = Stripe::Charge.create(
  #       :customer    => customer.id,
  #       :amount      => @amount.to_i,
  #       :description => 'Rails Stripe customer',
  #       :currency    => 'usd'
  #     )
  #

  it ' will rescue from rejected card' do

    #   rescue Stripe::CardError => e
    #     flash[:error] = e.message
    #     redirect_to new_charge_path
    #   end
    # end


  end



end
