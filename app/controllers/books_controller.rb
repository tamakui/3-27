class BooksController < ApplicationController
  def new
  end
  
  def index
    @book = Book.new
    @books = Book.all
    
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  

  def show
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path(book.id)
  end

  def edit
  end
  
  private

def book_params
   params.require(:book).permit(:title, :body)
end

end