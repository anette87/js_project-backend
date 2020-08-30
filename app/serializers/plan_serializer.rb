class PlanSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :day
  attributes :day_id, :location, :description, :id
end
