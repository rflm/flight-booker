class FlightsController < ApplicationController
  def index
    date = params[:date].to_date
    range = date.beginning_of_day..date.end_of_day
    @flights = Flight.where(from_airport_id: params[:from_id],
                            to_airport_id: params[:to_id],
                            start: range).sort
  end

  def from
    @airports = Airport.all
  end

  def to
    matching_flights = Flight.where(from_airport_id: params[:from_id])
    @airports = matching_flights.to_airports
  end

  def date
    matching_flights = Flight.where(from_airport_id: params[:from_id],
                                    to_airport_id: params[:to_id])
    @dates = matching_flights.dates
  end
end
