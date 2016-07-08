class CatController < ApplicationController

  def index
  end

  def new
  end

  def import
    Cat.import(params[:file])
    redirect_to root_path, notice: "Products imported."
  end

  def create
    @cat = Cat.new(
    name: params[:cat][:name],
    description: params[:cat][:description],
    breed: params[:cat][:breed],
    age: params[:cat][:age].to_i,
    price: params[:cat][:price]
    )
    @cat.save
    redirect_to root_path, notice: "Cat Added!"
  end

  def destroy
    if current_user.admin?
      @cat = Cat.find(params[:id])
      @cat.destroy
      redirect_to root_path, notice: "Cat found forever home!"
    end
  end

end
