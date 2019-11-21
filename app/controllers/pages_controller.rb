class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profile]
  def home
     if params[:query].present?
      @garments = policy_scope(Garment).search_by_title_and_location(params[:query])
    else
      @garments = policy_scope(Garment)
  end
  end

  def profile
    @user = current_user
  end
end
