class ReceiptsController < ApplicationController
  def my_receipts
    @receipts = current_user.receipts
  end

  def admin
    @receipts = Receipt.all
  end

  def show
    if(current_user.admin)
      @receipt = Receipt.find(params[:id])
    else
      @receipt = current_user.receipts.find(params[:id])
    end
    @orders = Order.where(receipt_id: @receipt.id)
  end
  
  def confirm
    @receipt = Receipt.find(params[:id])
    @receipt.update_attribute(:paid, true)
    redirect_to admin_path
  end
end