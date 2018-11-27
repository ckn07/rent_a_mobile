class MobilesController < ApplicationController
  before_action :set_mobile, only: [:show]
  skip_before_action :authenticate_user!, only: [:show, :index]


  def index
    @mobiles = Mobile.all
  end

  def show
    @mobile = Mobile.find(params[:id])
    @reviews = @mobile.reviews # => array of reviews
  end

  def new
  end

  def edit
  end

  def set_mobile
    @mobile = Mobile.find(params[:id])
  end
end
      # , :brand, :model, :daily_price, :user_id, :photo, :address, :postcode, :city, :country])
