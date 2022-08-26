class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @passengers = params[:passengers].to_i
    @flight = params[:flight]
    @passengers.times {@booking.passengers.build}
  end

  def create
    @booking = Booking.new(passenger_params)
    
    if @booking.save
      redirect_to booking_path(@booking)
    else
      flash[:error] = 'error'
      redirect_to new_booking_path
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking[:flight_id])
  end

  private

  def booking_params

  end
  def passenger_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :passenger_name, :passenger_email])
  end
end
