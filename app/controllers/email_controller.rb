class EmailController < ApplicationController
  def index
  end

  def create
    if params[:subscribe] == "yes"
      user = current_user
      user.subscription = true
      user.save!
    end
  end
end
