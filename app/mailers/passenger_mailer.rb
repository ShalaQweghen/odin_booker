class PassengerMailer < ApplicationMailer

	def thank_you_email(passenger, booking)
		@booking = booking
		@passenger = passenger
		mail(to: @passenger.email, subject: "Thank You for Your Booking!")
	end
end
