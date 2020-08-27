class Trip < ApplicationRecord
    has_many :days

    before_create :save_days

    def save_days
        num_days = (last_day - starting_day).to_i
        total_days = num_days + 1

        puts total_days

        total_days.times.each do |n|
            puts "in loop n: #{n}"
            day = self.days.build(date: n+1)
            # day.save
        end
    end

end
