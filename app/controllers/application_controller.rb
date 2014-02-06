class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all # include all helpers, all the time  
  protect_from_forgery with: :exception
  
  layout "application"
    
    helper_method :current_admin_session, :current_admin  
  
    private  
    def current_admin_session  
      return @current_admin_session if defined?(@current_admin_session)  
      @current_admin_session = AdminSession.find  
    end  
  
    def current_admin  
      return @current_admin if defined?(@current_admin)  
      @current_admin = current_admin_session && current_admin_session.user  
    end  
    
    def require_user
      logger.debug "ApplicationController::require_user"
      unless current_admin
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to new_admin_session_url
        return false
      end
    end
    
    def store_location
          session[:return_to] = request.url
        end
    
        
end
