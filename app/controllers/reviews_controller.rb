class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(reviews_param)
  end

  private

  def reviews_param
    params.require(:reviews).permit(:content, :rating)
  end

end
