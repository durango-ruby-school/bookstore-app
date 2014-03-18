class ReviewsController < ApplicationController
  before_filter :find_book 
  
  def show
    @review = @book.reviews.find params[:id]
  end
  
  def new
    @review = @book.reviews.new
  end
  
  def create
    @review = @book.reviews.new params[:review]
    if @review.save
      redirect_to [@book, @review]
    else
      render "new"
    end
  end
  
  def edit
    @review = @book.reviews.find params[:id]
  end
  
  def update
    @review = @book.reviews.find params[:id]
    if @review.update_attributes params[:review]
      redirect_to [@book, @review]
    else
      render "edit"
    end
  end
  
  def destroy
    @review = @book.reviews.find params[:id]
    @review.destroy
    redirect_to @book
  end
  
  private
  
  def find_book
    @book = Book.find params[:book_id]
  end
end