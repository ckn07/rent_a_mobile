class MobilesController < ApplicationController
  def index
    @mobiles = Mobile.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
