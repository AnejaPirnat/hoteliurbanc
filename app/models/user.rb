class User < ApplicationRecord
    validates :username, presence: true
    validates :room_number, presence: true
end
