class GarmentsController < ApplicationController

  def index
    @garments = Garment.all
  end

  def show
    @Garment = Garment.find(params[:id])
  end

  def new
    @garment = Garment.new
  end

  def create
    @garment = Garment.new(Garment_params)
    if @garment.save
      redirect_to garment_path(@garment)
    else
      render :new
    end
  end

  def destroy
    @garment = Garment.delete
  end

  def garment_params
    params.require(:garment).permit(:daily_price, :description, :location, :title)
  end

end
