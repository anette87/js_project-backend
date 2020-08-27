class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :client_name, :location, :starting_day, :last_day
end
