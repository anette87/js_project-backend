class TripsController < ApplicationController

    def create
        trip = Trip.create(trip_params)
        puts trip.errors.full_messages
        render json: TripSerializer.new(trip)

    end

    private

    def trip_params
        params.require(:trip).permit(:client_name, :location, :starting_day, :last_day)
    end
end 