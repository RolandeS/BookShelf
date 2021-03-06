class UserSessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:email], params[:password], params[:remember])
  		redirect_back_or_to(:mybookshelf, notice: 'Login Successful!')
  	else
  		flash.now[:alert] = 'Login failed'
  		render action: 'new'
  	end
  end

  def destroy
  	logout
  	redirect_to root_path, notice: 'Logged out '
  end
end
