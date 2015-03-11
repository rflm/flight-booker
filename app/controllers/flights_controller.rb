class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @start_dates = Flight.dates

    @flights = Flight.where({ from_airport_id: params[:from_id], to_airport_id: params[:to_id] }).sort
  end
end
