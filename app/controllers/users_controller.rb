class UsersController < ApplicationController
before_filter :load_shelf

  def new
  	@user = User.new
    if current_user
      redirect_to :mybookshelf
    end
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      auto_login(@user)
  		redirect_to :getstarted, notice: "Awesome, you just signed up!"
  	else
  		render :new
  	end
  end

  def show
    @shelf = Shelf.new
    @book = Book.new
    @shelves = current_user.shelves
    
    @thisShelf = Shelf.find(params[:id])

    if current_user
      @book = @thisShelf.books.build
    end

  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def load_shelf
    @shelf = Shelf.all
  end
end
