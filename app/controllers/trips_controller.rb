class TripsController < ApplicationController

    def index
        trip = Trip.all 
        render json: TripSerializer.new(trip)
    end
    
    
    def create
        trip = Trip.new(trip_params)
        if trip.save
            render json: TripSerializer.new(trip)
        else
            render json: trip.errors, status: :unprocessable_entity
        end
    end

    private

    def trip_params
        params.require(:trip).permit(:client_name, :location, :starting_day, :last_day, :email)
    end
end 