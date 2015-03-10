class ShelvesController < ApplicationController
  def index
    @shelves = current_user.shelves 
    @shelf = Shelf.new
  end 

  def new
    @shelf = Shelf.new
  end

# These functions will have to be updated to ajax i.e: ajaxify
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def create
    @shelf = Shelf.new(shelf_params)
    @shelf.user_id = current_user.id
    if @shelf.save
      redirect_to shelves_path, notice: 'Your new Shelf is created!'
    else
      flash.now[:alert] = "Oups! An error has occured, please retry to create your shelf.."
      render :new
    end
  end

  def show
    @shelf = current_shelves.find params[:id]
  end

  def edit
    @shelf = current_shelves.find params[:id]
  end


# These functions will have to be updated to ajax i.e: ajaxify
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def update
    @shelf = Shelf.find(params[:id])
    if @shelf.update_attributes(shelf_params)
      redirect_to shelves_path
    end
  end

  def destroy
    @shelf = current_shelves.find params[:id]
    @shelf.destroy
    redirect_to shelves_path, notice: 'Shelf deleted'
  end

  private
  def shelf_params
    params.require(:shelf).permit(:name)    
  end

end
