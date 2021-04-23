class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def destroy
    Itinerary.where(passenger_id: params[:passenger], flight_id: params[:flight]).destroy_all
    redirect_to '/flights'
  end
end
