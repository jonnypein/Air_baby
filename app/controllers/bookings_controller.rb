class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @garment = Garment.find(params[:garment_id])
    @booking = Booking.new
    # @booking.garment = @garment
    # @booking.user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @garment = Garment.find(params[:garment_id])
    @booking.garment = @garment
    if @booking.save
      redirect_to garment_path(@garment)
    else
      render :new
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_amount)
  end

end
