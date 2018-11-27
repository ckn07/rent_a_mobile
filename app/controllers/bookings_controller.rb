class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    authorize @booking
  end

  def new
    @mobile = Mobile.find(params[:mobile_id])
    @reviews = @mobile.reviews
    @user = current_user
    @booking = Booking.new
    authorize @booking
  end

  def create
    @mobile = Mobile.find(params[:mobile_id])
    @booking = Booking.new(booking_params)
    authorize @booking
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

