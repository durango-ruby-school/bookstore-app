class ReviewsController < ApplicationController
  def show
    @book = Book.find params[:book_id]
    @review = @book.reviews.find params[:id]
  end
  
  def new
    @book = Book.find params[:book_id]
    @review = @book.reviews.new
  end
  
  def create
    @book = Book.find params[:book_id]
    @review = @book.reviews.new params[:review]
    @review.save
    redirect_to [@book, @review]
  end
end