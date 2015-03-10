class BooksController < ApplicationController

before_filter :load_shelf

  def index
     @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = @shelf.books.build(book_params)
    # @book = Book.new(book_params)
    # @book.shelf_id = current_shelf.id
    # @book.user = current_user

    @book = Book.new(
      name: params[:book][:name],
      link: params[:book][:link],
      note: params[:book][:note],
      shelf_id: @shelf.id
      )

    if @book.save
      redirect_to user_path(current_user), notice: 'Your new Book is addded!'
    else
      flash.now[:alert] = "Oups! An error has occured, please retry to add your book.."
      render :new
    end
  end

  def show
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
    @shelf = Shelf.find(params[:shelf_id])
  end
end
