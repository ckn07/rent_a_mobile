class MobilesController < ApplicationController
  before_action :set_mobile, only: [:show, :edit, :update]

  def index
    @mobiles = Mobile.all
  end

  def show
  end

  def new
    @mobile = Mobile.new
  end

  def create
    @mobile = Mobile.new(mobile_params)
    @mobile.user = current_user
    # authorize @mobile
    if @mobile.save!
      redirect_to mobile_path(@mobile)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @mobile.update(mobile_params)
    redirect_to mobile_path(@mobile)
  end

  def set_mobile
    @mobile = Mobile.find(params[:id])
  end

  private

  def mobile_params
    params.require(:mobile).permit(:brand, :model, :daily_price, :address, :postcode, :city, :mobile_location, :title, :body, :photo)
  end
end
