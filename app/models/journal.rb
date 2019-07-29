class Journal < ApplicationRecord
    belongs_to :user
    
    validates :title, presence: true, length: {minimun:3, maximum:50} 
    validates :body, presence: true, length: {minimun:10, maximum:500}
    # validates :user_id, presence: true

end
