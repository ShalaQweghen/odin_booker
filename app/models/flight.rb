class Flight < ApplicationRecord
	belongs_to :departure, class_name: "Airport"
	belongs_to :arrival, class_name: "Airport"
	has_many :bookings
	has_many :passensers, through: :bookings

	def date_formatted
		date.strftime("%m/%d/%Y")
	end
end
