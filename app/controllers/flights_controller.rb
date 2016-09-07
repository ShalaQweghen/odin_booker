class FlightsController < ApplicationController

	def index
		@airports = Airport.all.map(&:code).uniq
		@dates = Flight.all.map(&:date_formatted).uniq
		unless params[:departure_id].nil?
			@flights = Flight.where(departure_id: Airport.find_by(code: params[:departure_id]).id,
									arrival_id: Airport.find_by(code: params[:arrival_id]).id)
			@flights = @flights.select { |flight| flight.date_formatted == params[:date] }
			if params[:departure_id] == params[:arrival_id]
				flash.now[:alert] = "Your departure and arrival airports cannot be the same."
			elsif @flights.empty?
				flash.now[:alert] = "No flights found matching your criteria."
			end
		end
	end
end
