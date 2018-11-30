class UsersController < ApplicationController

  def show
    @user = current_user
    @mobiles = Mobile.where(user_id: params[:id])
    @booking_as_renter = Booking.where(user_id: params[:id])

    @booking_as_owner = Booking.where(mobile_id: @mobiles.id)

    # @user_bookings_as_lender = Booking.where()
    authorize @user
  end


end
