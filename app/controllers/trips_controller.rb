class TripsController < ApplicationController
  before_action :authenticate

  def index
    trips = Trip.where(user_id: params[:user_id])
    render json: {status: 200, trip: trips}
  end

  def show
    trip = Trip.find(params[:id])
    render json: {status: 200, trip: trip}
  end

  # def create
  #   trip = Trip.new(trip_params)
  #
  #   if trip.save
  #     render json: {status: 200, trip: trip}
  #   else
  #     puts $!
  #   end
  # end

  def create
    user = User.find(params[:user_id])
    trip = Trip.new(trip_params)
    puts params.inspect
    puts trip_params.inspect
    if trip.save
      render json: {status: 200, trip: trip}
    else
      render json: {status: 400, trip: trip}
    end
  end

  def update
    trip = Trip.find(params[:id])
    trip.update(trip_params)

    render json: {status: 200, trip: trip}
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy

    render json: {status: 204}
  end

  private
    def trip_params
      params.required(:trip).permit(
      :user_id,
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
end
