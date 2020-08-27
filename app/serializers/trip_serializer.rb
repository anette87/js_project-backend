class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :client_name, :location, :starting_day, :last_day, :days
end
