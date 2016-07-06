class EmailController < ApplicationController

  def index
  end

  def create
    Pony.mail(
    :to => params[:Email],
    :html_body => '<h1>Hello there!</h1>',
    :body => "In case you can't read html, Hello there."
    )

  end
end
