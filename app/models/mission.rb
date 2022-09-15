class Mission < ApplicationRecord
  belongs_to :listing

  MISSION_NAME = %w[first_checkin last_checkout checkout_checkin].freeze

  validates :mission_type, inclusion: { in: MISSION_NAME }
  validates :mission_type, :price, presence: true
end


# 4 main objects populate our app:
# - `listings`: apartments of our clients
# - `bookings`: periods of time during which our clients leave us their apartment
# - `reservations`: periods of time during which a guest rents one of our apartments
# - `mission`: cleaning an apartment

# We negotiated the prices with our cleaning partner:
# - a first checkin costs 10€ per room
# - a checkout checkin costs 10€ per room
# - a last checkout costs 5€ per room

# - We should have a cleaning mission called `first_checkin` at the beginning of the booking
# reservation start and end date have to be include in booking start and end date ()
# when we create a booking => create a mission with a mission_type: "first_checkin" and a pirce:
# lorsqu'il y a un jour d'écart entre 2 reservation => first_checkin(10e) puis last_checkout(10e)
# lorsqu'il n'y a pas de jour d'écart entre 2 réservation =>  checkout_checkin(20e)

# - We should have  a cleaning mission called `last_checkout` before the owner comes back
# - We should have  a cleaning mission called `checkout_checkin` at the end of each reservation UNLESS there is already a last_checkout at the same date
