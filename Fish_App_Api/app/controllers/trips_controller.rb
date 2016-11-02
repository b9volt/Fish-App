class TripsController < ApplicationController
  before_action :authenticate

  def index
    trips = Trip.all
    render json: {status: 200, trips: trips}
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    def trip_params
      params.required(:trip).permit(
      :location,
      :num_of_fish,
      :clientsHappy,
      :end,
      :rating,
      :start,
      :summary,
      :weather
      )
end
