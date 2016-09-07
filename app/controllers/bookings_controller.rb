class BookingsController < ApplicationController

	def new
		@flight = Flight.find_by(name: params[:flight])
		@booking = Booking.new
		@booking.build_passenger
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.build_passenger(booking_params[:passenger_attributes]).save
		@booking.passenger_id = Passenger.last.id
		if @booking.save
			redirect_to @booking
		else
			render :new
		end
	end

	def show
		@booking = Booking.find(params[:id])
	end

	private

	def booking_params
		params.require(:booking).permit(:flight_id, :passengers, passenger_attributes: [:name, :email])
	end
end
