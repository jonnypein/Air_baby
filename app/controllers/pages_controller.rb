class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profile]
  def home
  end

  def profile
    @user = current_user
  end
end
