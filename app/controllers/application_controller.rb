class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  # def current_shelf
  # 	@current_shelf ||= Shelf.find(user[:user_id]) if user[:user_id]
  # end

  def current_shelves
  	current_user.shelves
  end

  helper_method :current_shelves
end
