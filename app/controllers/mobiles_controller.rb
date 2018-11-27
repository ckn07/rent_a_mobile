class MobilesController < ApplicationController
  def index
  end

  def show
    @mobile = Mobile.find(params[:id])
    @reviews = @mobile.reviews # => array of reviews
  end

  def new
  end

  def edit
  end
end
