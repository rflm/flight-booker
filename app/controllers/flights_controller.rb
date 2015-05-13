class FlightsController < ApplicationController
  def index
    @flights = Flight.where(from_airport_id: params[:from_id], to_airport_id: params[:to_id], start: params[:date].to_date.beginning_of_day..params[:date].to_date.end_of_day).sort
  end

  def from
    @airports = Airport.all
  end

  def to
    matching_flights = Flight.where(from_airport_id: params[:from_id])
    @airports = matching_flights.to_airports
  end

  def date
    matching_flights = Flight.where(from_airport_id: params[:from_id], to_airport_id: params[:to_id])
    @dates = matching_flights.dates
  end
end
