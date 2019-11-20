class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
  end

  def update
  end
end
