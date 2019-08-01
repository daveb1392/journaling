class User < ApplicationRecord
has_many :journals

validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
VALID_EMAIL_REGEX = /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
before_save { self.email = email.downcase }
has_secure_password

    def positive_days
        self.journals.select { |entry| entry.how_was_day == "Positive" }
    end

    def positive_days_count
        self.positive_days.count
    end

    def negative_days
        self.journals.select { |entry| entry.how_was_day == "Negative" }
    end

    def negative_days_count
        self.negative_days.count
    end

    def neutral_days
        self.journals.select { |entry| entry.how_was_day == "Neutral" }
    end

    def neutral_days_count
        self.neutral_days.count
    end       


    def create_date
        self.created_at 
    end

    def current_date
        DateTime.current
    end

    def date_difference
        difference = current_date.to_i - self.create_date.to_i
        dd = (difference / 1.day).round
    end

    def user_meditation
        self.journals.select{ |entry| entry.meditate == true }
    end

    def user_meditation_count
        self.user_meditation.count 
    end

    def meditation_yes
        if self.user_meditation_count == 0
            "You have no entries, go and meditate."
        else 
            "Good Job, keep up the good work"
        end
    end


end
