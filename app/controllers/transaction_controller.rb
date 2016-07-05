class TransactionController < ApplicationController
  def index
    @transactions = Transaction.all

    respond_to do |format|
      format.html
      format.csv { send_data @transactions.to_csv, filename: "transactions-#{Date.today}.csv" }
    end
  end
end
