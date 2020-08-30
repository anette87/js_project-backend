class Trip < ApplicationRecord
    has_many :days
    validates :client_name, :location, :starting_day, :last_day, presence: true
    validate :dates_sanity_check
    validates :email, uniqueness: { scope: :client_name, message: "and name combination should be unique" }, if: :email_present?


    before_create :save_days, 

    def save_days
        num_days = (last_day - starting_day).to_i
        total_days = num_days + 1

        puts total_days

        total_days.times.each do |n|
            puts "in loop n: #{n}"
            day = self.days.build(date: n+1)
        end
    end

    def dates_sanity_check
        if starting_day.present? && last_day.present? && starting_day > last_day
            errors.add(:starting_day, "must come before last day")
        end     
    end

    def email_present?
        email.present?
    end
    
    

end
