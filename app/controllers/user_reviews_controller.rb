class UserReviewsController < ApplicationController
  def create
    @user_review = UserReview.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @user_review.user = User.find(@booking.user_id)
    @user_review.booking = Booking.find(params[:booking_id])
    if @user_review.save
      redirect_to user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @user_review = UserReview.new
    @service = Service.find(params[:service_id])
    @booking = Booking.find(params[:booking_id])
    @user_review.user = User.find(@booking.user_id)
  end

  private

  def review_params
    params.require(:user_review).permit(:rating, :comment, photos: [])
  end
end
