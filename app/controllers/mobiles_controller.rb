class MobilesController < ApplicationController
  before_action :set_mobile, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @mobiles = policy_scope(Mobile).order(created_at: :desc)
    @mobiles = Mobile.where.not(latitude: nil, longitude: nil)

    @markers = @mobiles.map do |mobile|
      {
        lng: mobile.longitude,
        lat: mobile.latitude,
        # infoWindow: render_to_string(partial: "infowindow", locals: { mobile: mobile })
      }
    end
  end

  def show
    authorize @mobile
    @mobile = Mobile.find(params[:id])
    @reviews = @mobile.reviews # => array of reviews
  end

  def new
    @mobile = Mobile.new
    authorize @mobile
  end

  def create
    @mobile = Mobile.new(mobile_params)
    @mobile.user = current_user
    authorize @mobile
    if @mobile.save!
      redirect_to mobile_path(@mobile)
    else
      render :new
    end
  end

  def edit
    authorize @mobile
  end

  def update
    authorize @mobile
    @mobile.update(mobile_params)
    redirect_to mobile_path(@mobile)
  end

  def destroy
    @mobile = Mobile.find(params[:id])
    authorize @mobile
    @mobile.destroy
    redirect_to mobiles_path
  end

  private

  def set_mobile
    @mobile = Mobile.find(params[:id])
  end

  def mobile_params
    params.require(:mobile).permit(:brand, :model, :daily_price, :address, :title, :body, :photo)
  end
end

