class ReceiptsController < ApplicationController
  def my_receipts
    @receipts = current_user.receipts
    @receipt = current_user.receipts.first # get the first receipt for the current user
  end



  def show
    @receipt = Receipt.find(params[:id])
    @orders = @receipt.orders
    @receipt = Receipt.find(params[:id])
  end
end
