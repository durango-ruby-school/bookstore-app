class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find params[:id]
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new params[:book]
    @book.save
    redirect_to "/books/#{@book.id}"
  end
end