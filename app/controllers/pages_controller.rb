class PagesController < ApplicationController
  def home
    redirect_to mobiles_path
  end
end
