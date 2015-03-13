class ShelvesController < ApplicationController
  def index
    @shelves = current_user.shelves
 
  end

  def new
    @shelf = Shelf.new
  end

  def create
    @shelf = Shelf.new(shelf_params)
    @shelf.user_id = current_user.id

    respond_to do |format|
      if @shelf.save
        format.html { redirect_to shelves_path, notice: 'Your new Shelf is created!' }
        format.js {} # This will look for app/views/shelves/create.js.erb
      else
        format.html { render shelves_url, alert: "Oups! An error has occured, please retry to create your shelf.."}
        format.js {} # This will look for app/views/shelves/create.js.erb
      end
    end  
  end

  def show
    @shelf = current_shelves.find params[:id]
  end

  def edit
    @shelf = current_shelves.find params[:id]
  end

  def update
    @shelf = Shelf.find(params[:id])
    
    respond_to do |format|
      if @shelf.update_attributes(shelf_params)
        format.html {redirect_to shelves_path}
        format.js
      end
    end
  end

  def add_demo_shelves
    # @shelfIds = Shelf.find(params[:shelf_ids])
    # @shelfIds.copy_to(current_user)
    # respond_to |format|
    #   format.js
    # end
    respond_to do |format|
        if request.xhr?
          format.js
          @shelfIds = Shelf.find(params[:shelf_ids])
          @shelfIds.copy_to(current_user)
          redirect_to shelves_path
        end
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
