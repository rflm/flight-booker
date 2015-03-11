class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all
    @start_dates = Flight.dates
  end
end
