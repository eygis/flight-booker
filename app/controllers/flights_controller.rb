class FlightsController < ApplicationController
  def index
    @flight = params[:flight] ? Flight.new(search_params) : Flight.new
    @airports = Airport.all.map{|a| [a.airport_city, a.id]}
    @flights = Flight.all
    @search = params[:flight] ? search_params.select{|k, v| v != ''} : nil
    if @search
      @results = !@search.empty? ? Flight.where(@search).includes(:departure_airport, :arrival_airport) : @flights
    end
  end

  private

  def search_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :flight_date)
  end
end
