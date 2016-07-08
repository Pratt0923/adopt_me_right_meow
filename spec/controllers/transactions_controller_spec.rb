require 'rails_helper'
require 'spec_helper'


# need this to pass
# class TransactionController < ApplicationController
#   def index
#     @transactions = Transaction.all
#      respond_to do |format|
#       format.html
#       format.csv { send_data @transactions.to_csv, filename: "transactions-#{Date.today}.csv" }
#     end
#   end
# end


# describe TransactionController do
#   it 'lets transactions save to csv file' do
#
#   end
# end
