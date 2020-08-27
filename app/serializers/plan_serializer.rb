class PlanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :day_id, :location, :description
end
