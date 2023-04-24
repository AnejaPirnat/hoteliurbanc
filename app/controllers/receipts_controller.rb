class ReceiptsController < ApplicationController
  def my_receipts
    @receipts = current_user.receipts
  end

  def show
    @receipt = current_user.receipts.find(params[:id])
    @orders = Order.where(receipt_id: @receipt.id)
  end
end
