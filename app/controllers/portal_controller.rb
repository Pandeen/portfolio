class PortalController < ApplicationController
  before_action :authenticate_user!
  
  def dashboard
    @user = current_user if user_signed_in?
  end
  
end
