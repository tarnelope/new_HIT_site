class AdminSessionsController < ApplicationController  
  
  before_filter :require_user, :only => :destroy
    
  def new
    @admin_session = AdminSession.new
  end

  def create
    @admin_session = AdminSession.new(params[:admin_session])
    if @admin_session.save
      flash[:notice] = "Login successful!"
      redirect_to products_path
    else
      flash[:notice] = "Not successfully saved."
      render :action => :new
    end
  end

  def destroy
    current_admin_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to products_path
  end
end
