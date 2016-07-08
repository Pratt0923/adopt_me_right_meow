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
#   describe '#index' do
#     it 'should be able to send an csv file' do
#        # stubs and expectations go here
#        get :index, :format => 'csv'
#     end
#   end
# end
