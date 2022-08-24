class Flight < ApplicationRecord

    belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
    belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"

    validates :departure_airport_id, presence: true
    validates :arrival_airport_id, presence: true
    validates :flight_duration, presence: true
    validates :flight_date, presence: true

end
