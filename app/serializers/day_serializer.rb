class DaySerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :trip
  has_many :plans

  attributes :trip_id, :date, :id
  attribute :plans do |object|
    object.plans.map { |plan| PlanSerializer.new(plan) }
  end
end
