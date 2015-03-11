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

  def show
    @book = Book.find(params[:id])
  end

  def edit
     @book = Book.find params[:id]
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to shelves_path
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to shelves_path
  end

  private
  def book_params
    params.require(:book).permit(:name, :link, :note, :shelf_id)
  end
    
  def load_shelf
    @shelf = current_shelves.find(params[:shelf_id])
    # binding.pry
  end
end
