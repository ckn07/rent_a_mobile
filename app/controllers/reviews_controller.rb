class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @mobile = Mobile.find(params[:mobile_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @mobile = Mobile.find(params[:mobile_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to mobile_path(@booking.mobile_id)
    else
      render "new"
    end
  end

private
  def review_params
    params.require(:review).permit(:star, :content)
  end
end
