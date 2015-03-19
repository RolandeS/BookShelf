class ShelvesController < ApplicationController

  SHELVES_SEARCH_SQL =<<-SQL
    LOWER(books.name) LIKE LOWER(?) OR
    LOWER(books.note) LIKE LOWER(?) OR
    LOWER(shelves.name) LIKE LOWER(?)
  SQL

  before_filter :ensure_logged_in

  def index
    if params[:search]
      query = "%#{params[:search]}%"
      @shelves = current_user.shelves.joins(:books)
      @shelves = @shelves.where(SHELVES_SEARCH_SQL, query, query, query).uniq(:id)
      # might need to add something that returns the shleves that don't have any books on them yet. like:
      # @shelves = Shelf.where("LOWER(name) LIKE LOWER(?) and (user_id) = ?", "%#{params[:search]}%", "#{current_user.id}")
    else
      @shelves = current_user.shelves
    end

    respond_to do |format|
      format.html
      format.js
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
