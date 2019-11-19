class GarmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @garments = policy_scope(Garment)

  end

  def show
    @garment = Garment.find(params[:id])
    authorize @garment
  end

  def new
    @garment = Garment.new
    authorize @garment
  end

  def edit
    @garment = Garment.find(params[:id])
    authorize @garment

  end

  def update
    @garment = Garment.find(params[:id])
    @garment.update(garment_params)
     authorize @garment
     if @garment.save
      redirect_to garment_path(@garment)
    else
      render :edit
    end
  end

  def create
    @garment = Garment.new(garment_params)
    @garment.user = current_user
    authorize @garment
    if @garment.save
      redirect_to garment_path(@garment)
    else
      render :new
    end
  end

  def destroy
    @garment = Garment.find(params[:id])
    authorize @garment
    @garment.destroy
    redirect_to garments_path
  end

  def garment_params
    params.require(:garment).permit(:daily_price, :description, :location, :title)
  end
end
