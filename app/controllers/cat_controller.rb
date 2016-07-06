class CatController < ApplicationController

  def index
  end

  def new
  end

  def import
    Cat.import(params[:file])
    redirect_to root_path, notice: "Products imported."
  end

end
