class Journal < ApplicationRecord
    belongs_to :user
    belongs_to :meditation
    
    validates :title, presence: true, length: {minimun:3, maximum:50} 
    validates :user_id, presence: true

    
end
