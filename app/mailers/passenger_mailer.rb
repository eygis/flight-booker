class PassengerMailer < ApplicationMailer
    def confirmation_email
        @booking = params[:booking]
        mail(to: @booking.passengers.pluck(:passenger_email), subject: 'Ticket Information')
    end
end
