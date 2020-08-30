class Plan < ApplicationRecord
    belongs_to :day
    validates :location, :description, presence: true
end
