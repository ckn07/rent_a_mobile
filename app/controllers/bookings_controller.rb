class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @mobile = Mobile.find(params[:mobile_id])
    @reviews = @mobile.reviews
    @user = current_user
    @booking = Booking.new
  end

  def create
    @mobile = Mobile.find(params[:mobile_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.mobile = @mobile
    duration = (@booking.maxDate - @booking.minDate).to_i
    @booking.duration = duration
    total = @mobile.daily_price * duration
    @booking.total_price = total
    if @booking.save
      redirect_to mobile_path(@booking.mobile_id)
      notice
    else
      alert "ça ne marche pas"
    end
  end

private
  def booking_params
    params.require(:booking).permit(:minDate,
    :maxDate)
  end
end
