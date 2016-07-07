class EmailController < ApplicationController

  def index
  end

  def create
    Pony.mail(
    :to => 'snubly1@gmail.com',
    :from => 'snubly1@gmail.com',
    :subject => 'hi',
    :body => 'Hello there.'
    )
  end
end
