class Listing < ApplicationRecord
  validates :num_room, presence: true
end
