require 'rails_helper'
require 'spec_helper'

describe ChargesController do

  #   def new
  #     @cat = Cat.find(params[:cat_id])
  #   end

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
  # #we need to change our token because apparently you cant use a stripe token more then once. stupid rules
  #     charge = Stripe::Charge.create(
  #       :customer    => customer.id,
  #       :amount      => @amount.to_i,
  #       :description => 'Rails Stripe customer',
  #       :currency    => 'usd'
  #     )
  #
  #   rescue Stripe::CardError => e
  #     flash[:error] = e.message
  #     redirect_to new_charge_path
  #   end
  # end
  it ' will rescue from rejected card' do


  end



end
