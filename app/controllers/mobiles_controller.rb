class MobilesController < ApplicationController
  before_action :set_mobile, only: [:show]

  def index
    authorize @restaurant
    @mobiles = policy_scope(Mobile).order(created_at: :desc)
  end

  def show
    authorize @restaurant
    @mobile = Mobile.find(params[:id])
    @reviews = @mobile.reviews # => array of reviews
  end

  def new
    authorize @restaurant
  end

  def create
    authorize @restaurant
  end

  def edit
    authorize @restaurant
  end

  def update
    authorize @restaurant
  end

  def delete
    authorize @restaurant
  end

private

  def set_mobile
    @mobile = Mobile.find(params[:id])
  end
end
      # , :brand, :model, :daily_price, :user_id, :photo, :address, :postcode, :city, :country])

