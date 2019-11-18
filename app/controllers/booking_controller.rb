class BookingController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @garment = Booking.find(params[:garment_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.garment = Garment.find(params[:garment_id])
    if @booking.save
      redirect_to garment_path(Garment.find(params[:garment_id]))
    else
      render :new
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.delete
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :total_amount)

  end

end
