class BooksController < ApplicationController

before_filter :load_shelf
# require 'uri'
# require 'open-uri'

  def index
     @book = Book.all
     @shelf = Shelf.find(params[:shelf_id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = @shelf.books.build(book_params)
    # @icon = @book.fetch_icon(params[:link])
    # p params[:link]
    # uri = URI.parse("http://www.facebook.com")
    # uri.path = "/favicon.ico"
    # p uri

    # @data = open(uri).read
    # p data
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
    
    respond_to do |format|
      if @book.update_attributes(book_params)
        format.html {redirect_to shelves_path}
        format.js{}
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
    params.require(:book).permit(:name, :link, :note, :read, :shelf_id, :icon)
  end
    
  def load_shelf
    @shelf = current_shelves.find(params[:shelf_id])
  end
end