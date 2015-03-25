class BooksController < ApplicationController

before_filter :load_shelf

  def index
     @book = Book.all
     @shelf = Shelf.find(params[:shelf_id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = @shelf.books.build(book_params)
    @book.shelf = @shelf

    respond_to do |format|
      if @book.save
        format.html { redirect_to shelves_path, notice: 'Your new Book is addded!' }
        format.js {}
      else
        format.html { flash.now[:alert] = "Oups! An error has occured, please retry to add your book.."
                      render shelves_url
                    }
        format.js {}
      end
    end
  end

  def add_last_click
    @book = Book.find(params[:id])
    @book.last_clicked = Time.now
    @book.save
  end 

  def show
    @book = Book.find(params[:id])
  end

  def edit
     @book = Book.find params[:id]
  end

  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(book_params)
        format.html {redirect_to shelves_path}
        format.js {}
      else 
        format.html {redirect_to shelves_path}
        format.js {} 
      end
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    
    respond_to do |format|
      format.html { redirect_to shelves_path, notice: 'book deleted' }
      format.js { render :layout => false }
    end 
    
  end

  private
  def book_params
    params.require(:book).permit(:id, :name, :link, :note, :read, :last_clicked, :shelf_id, :icon)
  end
    
  def load_shelf
    @shelf = current_shelves.find(params[:shelf_id])
  end
end