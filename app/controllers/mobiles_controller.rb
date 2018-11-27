class MobilesController < ApplicationController
  before_action :set_mobile, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    authorize @mobile
    @mobiles = policy_scope(Mobile).order(created_at: :desc)
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

  def delete
    authorize @mobile
  end

  private

  def set_mobile
    @mobile = Mobile.find(params[:id])
  end

  def mobile_params
    params.require(:mobile).permit(:brand, :model, :daily_price, :address, :postcode, :city, :mobile_location, :title, :body, :photo)
  end
end
