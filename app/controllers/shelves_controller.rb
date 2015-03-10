class ShelvesController < ApplicationController
  def index
    @shelf = Shelf.all
  end

  def new
    @shelf = Shelf.new
  end

# These functions will have to be updated to ajax i.e: ajaxify
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def create
    # @shelf = current_user.shelves.new(shelf_params)
    @shelf = Shelf.new(shelf_params)
    @shelf.user_id = current_user.id
    if @shelf.save
      redirect_to user_path(current_user), notice: 'Your new Shelf is created!'
    else
      flash.now[:alert] = "Oups! An error has occured, please retry to create your shelf.."
      render :new
    end
  end

  def show
  end

  def edit
    @shelf = Shelf.find(params[:id])
  end


# These functions will have to be updated to ajax i.e: ajaxify
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def update
    @shelf = Shelf.find(params[:id])
    if @shelf.update_attributes(shelf_params)
      redirect_to shelf_path(@shelf)
    end
  end

  def destroy
    @shelf = shelf.find(params[:id])
    @shelf.destroy
    redirect_to user_path, notice: 'Shelf deleted'
  end

  private
  def shelf_params
    params.require(:shelf).permit(:name)    
  end

end
