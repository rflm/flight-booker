class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @start_dates = Flight.dates
    if params[:from_id] == nil
      @flights = []
    else
      @flights = Flight.where({ from_airport_id: params[:from_id], to_airport_id: params[:to_id],
                                start: params[:start_date].to_date.beginning_of_day..params[:start_date].to_date.end_of_day }).sort
    end
  end
end
