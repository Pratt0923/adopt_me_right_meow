class EmailController < ApplicationController
  def index
  end

  #if subscribe == yes then heroku will send an email out to the email that is subscribed once a week on Monday.
  def create
    if params[:subscribe] == "yes"
      user = current_user
      user.subscription = true
      user.save!
    else
      flash[:success] = "Your subscription preferences have been updated!"
    end
  end
end
