class BooksController < ApplicationController

before_filter :load_shelf
skip_before_filter :verify_authenticity_token

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

  def add_book_extension
    @book = Book.new
    
    # @shelf = Shelf.find(params[:shelf_id])
    # @book = @shelf.books.build(book_params)
    @book.save
    # create book in here with params being passed in.

# Started POST "/books/add_book_extension" for ::1 at 2015-03-25 12:04:58 -0400
# Processing by BooksController#add_book_extension as */*
#   Parameters: {"name"=>"Learn Ruby with the Neo Ruby Koans", "link"=>"http://rubykoans.com/", "note"=>"", "shelf_id"=>"123"}
#   User Load (0.2ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
#   Shelf Load (0.1ms)  SELECT  "shelves".* FROM "shelves" WHERE "shelves"."user_id" = ? AND "shelves"."id" = ? LIMIT 1  [["user_id", 1], ["id", 123]]
#   Rendered books/add_book_extension.html.erb within layouts/application (1.1ms)
# Completed 200 OK in 456ms (Views: 436.5ms | ActiveRecord: 1.1ms)
  
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