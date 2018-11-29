class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    redirect_to mobiles_path
  end

  def dashboard
    @mobile = current_user.mobile
  end

end
