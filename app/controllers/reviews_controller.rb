class ReviewsController < ApplicationController
  # Pre-set for cloudinary setup
  private

  def review_params
    params.require(:review).permit(:rating, :comment, :photos [])
  end
end
