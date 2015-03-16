class ShelvesController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @shelves = current_user.shelves
  end

  def new
    @shelf = Shelf.new
  end

  def create
    @shelf = Shelf.new(shelf_params)
    @shelf.user_id = current_user.id

    # if (current_shelves.where("LOWER(name) LIKE LOWER (?)", "%#{params[:name]}%"))
    #   p "They are equal"
    #   @msg = "Oups!!! You already have a shelf with this name."
    #   flash.now[:notice] = 'Oups! You already have a shelf with this name.'
    # else @msg = "you're cool"
    # end

    respond_to do |format|
      if @shelf.save
        format.html { redirect_to shelves_path, notice: 'Your new Shelf is created!' }
        format.js {} 
      else
        format.html { render shelves_url, alert: "Oups! An error has occured, please retry to create your shelf.."}
        format.js {} 
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
    respond_to do |format|
        if request.xhr?
          format.js
          @shelves = Shelf.find(params[:shelf_ids])
          @shelves.each do |shelf|
            shelf.copy_to(current_user)
          end
        end
    end
  end

  def destroy
    @shelf = current_shelves.find params[:id]
    @shelf.destroy

    respond_to do |format|
      format.js { render :layout => false }
      format.html { redirect_to shelves_path, notice: 'Shelf deleted' }
    end 
  end

  private
  def shelf_params
    params.require(:shelf).permit(:name)    
  end

  #  def duplicate(shelf)
  #   current_user.shelves.each do |s|
  #     s.name == shelf.name
  #   end
  # end
end
