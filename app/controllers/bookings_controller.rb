class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)

  end

  def show
    # @booking = Booking.find(params[:id])
    @garment = Garment.find(params[:garment_id])
    @booking = Booking.new
    authorize @booking

  end

  # def new
  #   @garment = Garment.find(params[:garment_id])
  #   @booking = Booking.new
  #   authorize @booking
  #   # @booking.garment = @garment
  #   # @booking.user = current_user
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @garment = Garment.find(params[:garment_id])
    @booking.garment = @garment
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_amount)
  end

end
