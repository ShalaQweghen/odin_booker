class BookingsController < ApplicationController

	def new
		@flight = Flight.find_by(name: params[:flight])
		@booking = Booking.new
		params[:amount].to_i.times { @booking.passengers.build }
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			flash[:success] = "Flight successfully booked."
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
		params.require(:booking).permit(:flight_id, :amount, passengers_attributes: [:name, :email])
	end
end
