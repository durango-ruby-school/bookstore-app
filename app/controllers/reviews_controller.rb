class ReviewsController < ApplicationController
  def show
    @book = Book.find params[:book_id]
    @review = @book.reviews.find params[:id]
    #@review = Review.find params[:id]
  end
end