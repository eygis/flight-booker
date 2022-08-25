class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map{|a| [a.airport_city, a.id]}
    @flights = Flight.all
    @search = params[:search] ? search_params.select{|k, v| v != ''} : nil
    if @search
      @results = !@search.empty? ? Flight.where(@search).includes(:departure_airport, :arrival_airport) : @flights
    end
  end

  private

  def search_params
    params.require(:search).permit(:departure_airport_id, :arrival_airport_id, :flight_date)
  end
end
