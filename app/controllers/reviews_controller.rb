class ReviewsController < ApplicationController
  def new
    @review = Review.new(params[:content], params[:rating])
    @review.save
  end
end
