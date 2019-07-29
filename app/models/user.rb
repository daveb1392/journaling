class User < ApplicationRecord
has_many :journals

validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
