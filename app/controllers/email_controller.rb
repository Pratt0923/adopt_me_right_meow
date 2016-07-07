class EmailController < ApplicationController

  def index
  end

  def create
    if params[:subscribe] == "yes"
      current_user.subscription = true
    end
  end
end


# if Time.now.wday == 1
#   @validusers = User.where(subscription: true)
#   @validusers.all.each do |user|
#     Pony.mail(
#     :to => "#{user.email}",
#     :from => 'Adoptme@meow.com',
#     :subject => 'Cats!',
#     :body => 'Hello there, some cats are ready for adoption. cat info here.'
#     )
#   end
# end
#heroku scheduler
