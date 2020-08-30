class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :client_name, :email, :location, :starting_day, :last_day, :id
  attribute :days do |object|
    object.days.map { |day| DaySerializer.new(day) }
  end
end
