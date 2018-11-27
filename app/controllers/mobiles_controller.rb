class MobilesController < ApplicationController
  before_action :set_mobile, only: [:show]
  mount_uploader :photo, PhotoUploader

  def index
    @mobiles = Mobile.all
  end

  def show
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
