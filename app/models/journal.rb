class Journal < ApplicationRecord
    belongs_to :user
    belongs_to :meditation
    
    validates :title, presence: true, length: {minimun:3, maximum:50} 
    validates :user_id, presence: true

    def positive_days
    Journal.select { |entry| entry.how_was_day == "Positive" }
end

def negative_days
    Journal.select { |entry| entry.how_was_day == "Negative" }
end

def neutral_days
    Journal.select { |entry| entry.how_was_day == "Neutral" }
end
end
