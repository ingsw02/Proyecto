class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def confirm_logged_in_user
    unless session[:usuario]
      flash[:notice] = "Porfavor loguear."
      redirect_to(:controller => 'usuario', :action => 'login')
      return false
    else
      return true
    end
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Porfavor loguear."
      redirect_to(:controller => 'admin', :action => 'login')
      return false
    else
      return true
    end
  end
end
