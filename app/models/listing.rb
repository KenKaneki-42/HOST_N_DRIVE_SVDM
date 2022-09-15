class Listing < ApplicationRecord
  has_many :bookings, :missions, :reservations
  validates :num_room, presence: true
end
