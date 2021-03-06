class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @mobile = Mobile.find(params[:mobile_id])
    @review = Review.new
    @review.booking = @booking
    # @review.mobile = @mobile
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @mobile = Mobile.find(params[:mobile_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to mobile_path(@mobile)
    else
      render "new"
    end

  end

private
  def review_params
    params.require(:review).permit(:star, :content)
  end
end
