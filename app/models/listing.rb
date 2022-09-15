class Listing < ApplicationRecord
  # has_many :reservations, :bookings, :missions
  validates :num_room, presence: true
end
