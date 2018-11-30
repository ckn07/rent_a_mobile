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

    # @booking = Booking.new
    # @booking.mobile = @mobile
    # equivaut à:

    @booking = @mobile.bookings.new

    authorize @booking
  end

  def create
    @mobile = Mobile.find(params[:mobile_id])
    @booking = Booking.new(booking_params)
    @booking.mobile = @mobile
    @booking.user = current_user
    authorize @booking
    duration = (@booking.maxDate - @booking.minDate).to_i
    @booking.duration = duration
    total = @mobile.daily_price * duration
    @booking.total_price = total
    if @booking.save
      redirect_to user_path(current_user)
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

