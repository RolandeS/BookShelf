class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_shelves
  	current_user.shelves
  end

  def demo_user
    User.where('email LIKE ?',"demo.user%").first
  end

  def demo_shelves
    demo_user.shelves
  end

  def ensure_logged_in
    if !current_user
      flash[:alert] = "Please Login!"
      redirect_to login_path
    end
  end

  helper_method :ensure_logged_in
  helper_method :current_shelves
  helper_method :demo_user
  helper_method :demo_shelves
end
