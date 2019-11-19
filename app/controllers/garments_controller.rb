class GarmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @garments = Garment.all
  end

  def show
    @garment = Garment.find(params[:id])
  end

  def new
    @garment = Garment.new
  end

  def edit
    @garment = Garment.find(params[:id])
  end

  def update
    @garment = Garment.find(params[:id])
    @garment.update(garment_params)
  end

  def create
    @garment = Garment.new(garment_params)
    @garment.user = current_user
    if @garment.save
      redirect_to garment_path(@garment)
    else
      render :new
    end
  end

  def destroy
    garment = Garment.find(params[:id])
    garment.destroy
    redirect_to garments_path
  end

  def garment_params
    params.require(:garment).permit(:daily_price, :description, :location, :title)
  end
end
