class ShelvesController < ApplicationController

  before_filter :ensure_logged_in

  def index
    # @shelves = current_user.shelves

    # if params[:search]
    #   @shelves = Shelf.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%") || Book.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%")
    # end

    search_value1 = "%#{params[:search]}%"
    search_value2 = "#{current_user.id}"
    search_query = "LOWER(name) LIKE LOWER(?) and (user_id) = ?"
    search_query2 = "LOWER(name) LIKE LOWER(?)" #&&  and Shelf.where(user_id = ?)

    if params[:search]
      if Shelf.where([search_query, search_value1, search_value2])
        @shelves = Shelf.where([search_query, search_value1, search_value2])
      elsif 
      Book.where([search_query2, search_value1]) #and Shelf.where(user_id = ?, search_value2)
        @shelf = Shelf.new(name: 'Search Results Shelf')
        @shelf.books = Book.where([search_query2, search_value1]) #, search_value2])
        @shelves = @shelf
      # else Book.each do |book|
      #         if book.note.where....

      #       end
      end
    else
      @shelves = current_user.shelves
    end 





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
end
