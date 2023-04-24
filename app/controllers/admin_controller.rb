class AdminController < ApplicationController
    before_action :require_admin
  
    def admin_panel
      @users = User.all
      @services = Service.all
      @receipts = Receipt.all
      # Retrieve any other necessary data
    end
    def index 
        @users = User.all
        @services = Service.all
        @receipt = Receipt.all
    end
  
    private
  
    def require_admin
      unless current_user&.admin?
        flash[:alert] = 'You do not have access to this page.'
        redirect_to root_path
      end
    end
end