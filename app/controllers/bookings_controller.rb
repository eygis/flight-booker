class BookingsController < ApplicationController

  before_action :check_passengers, only: [:new]

  def new
    @booking = Booking.new
    @passengers = params[:passengers].to_i
    @flight = params[:flight]
    @passengers.times {@booking.passengers.build}
  end

  def create
    @booking = Booking.new(passenger_params)
    
    if @booking.save
      PassengerMailer.with(booking: @booking).confirmation_email.deliver_now
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

  def check_passengers
    if params[:passengers].empty?
      flash[:error] = 'Passengers cannot be empty.'
      redirect_to root_path
    end
  end
end
