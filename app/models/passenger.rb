class Passenger < ApplicationRecord
	belongs_to :booking, inverse_of: :passengers
	has_many :flights, through: :bookings
	validates :name, presence: true
	validates :email, presence: true
end
