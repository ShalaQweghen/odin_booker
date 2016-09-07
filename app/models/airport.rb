class Airport < ApplicationRecord
	has_many :departure_flights, foreign_key: :departure_id, class_name: "Flight"
	has_many :arrival_flights, foreign_key: :arrival_id, class_name: "Flight"
end
