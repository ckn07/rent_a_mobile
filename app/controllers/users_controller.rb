class UsersController < ApplicationController

  def show
    @user = current_user
    @mobiles = Mobile.where(user_id: params[:id])
    @bookings_as_renter = @user.bookings
    @bookings_as_lender = Booking.where(mobile_id: @mobiles.each { |e| e.id })
    authorize @user
  end

end
