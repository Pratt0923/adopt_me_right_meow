class CatController < ApplicationController
  def index
  end

  def new
  end

  def import
    if params[:file].tempfile.first == "name,description,breed,age,price\n"
      Cat.import(params[:file])
      redirect_to root_path, notice: "Cats imported."
    else
      flash[:danger] = "That is not the correct format!"
    end
  end


# TODO validation check goes here
  def create
    if current_user.admin == true
      @cat = Cat.new(
        name: params[:cat][:name],
        description: params[:cat][:description],
        breed: params[:cat][:breed],
        age: params[:cat][:age].to_i,
        price: params[:cat][:price]
      )
      #params.require(:cat).permit(:name, :description, :breed, :age, :price)
      @cat.save
      redirect_to root_path, notice: "Cat Added!"
    else
      flash[:danger] = "You are not allowed to do that!"
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to root_path, notice: "Cat found forever home!"
  end

end
