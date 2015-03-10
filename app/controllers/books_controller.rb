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

    if @book.save
      redirect_to shelves_path, notice: 'Your new Book is addded!'
    else
      flash.now[:alert] = "Oups! An error has occured, please retry to add your book.."
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:name, :link, :note, :shelf_id)
  end
    
  def load_shelf
    @shelf = current_shelves.find(params[:shelf_id])
  end
end
