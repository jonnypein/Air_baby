class UserController < ApplicationController

  def show
  end

  def index
  end

  def destroy
    @user.delete
  end

end
