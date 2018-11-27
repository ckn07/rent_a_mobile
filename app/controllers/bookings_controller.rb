class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @mobile = Mobile.find(params[:mobile_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @mobile = Mobile.find(params[:mobile_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to mobiles_path(@mobile)
    else
      render "new"
    end
  end

private
  def booking_params
    params.require(:booking).permit(:minDate,
    :maxDate,
    :total_price,
    :user_id,
    :mobile_id,
    :duration)
  end
end
