class Flight < ApplicationRecord

    belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
    belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"

    has_many :bookings, class_name: "Booking", foreign_key: "flight_id"

    validates :departure_airport_id, presence: true
    validates :arrival_airport_id, presence: true
    validates :flight_duration, presence: true
    validates :flight_date, presence: true
    validates :flight_time, presence: true

    def flight_date_formatted
        flight_date.strftime("%m/%d/%y")
    end

end
