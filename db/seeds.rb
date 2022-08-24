# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
airports = Airport.create([
    {airport_code: 'DFW', airport_city: 'Dallas'},
    {airport_code: 'SEA', airport_city: 'Seattle'},
    {airport_code: 'PIT', airport_city: 'Pittsburgh'},
    {airport_code: 'SAN', airport_city: 'San Diego'},
    {airport_code: 'JFK', airport_city: 'New York'},
    {airport_code: 'SFO', airport_city: 'San Franscisco'},
    {airport_code: 'ORD', airport_city: 'Chicago'},
    {airport_code: 'SLC', airport_city: 'Salt Lake City'},
    {airport_code: 'BOS', airport_city: 'Boston'},
    {airport_code: 'DTW', airport_city: 'Detroit'}
])

flights = Flight.create([
    {departure_airport_id: 1, arrival_airport_id: 9, flight_duration: 120, flight_date: '2022-12-12'},
    {departure_airport_id: 2, arrival_airport_id: 7, flight_duration: 90, flight_date: '2022-10-02'},
    {departure_airport_id: 3, arrival_airport_id: 5, flight_duration: 20, flight_date: '2023-01-12'},
    {departure_airport_id: 4, arrival_airport_id: 3, flight_duration: 45, flight_date: '2022-09-12'},
    {departure_airport_id: 5, arrival_airport_id: 10, flight_duration: 220, flight_date: '2023-03-02'},
    {departure_airport_id: 6, arrival_airport_id: 2, flight_duration: 10, flight_date: '2022-11-01'},
    {departure_airport_id: 7, arrival_airport_id: 4, flight_duration: 170, flight_date: '2022-12-28'},
    {departure_airport_id: 8, arrival_airport_id: 6, flight_duration: 70, flight_date: '2022-12-04'},
    {departure_airport_id: 9, arrival_airport_id: 8, flight_duration: 30, flight_date: '2022-09-01'},
    {departure_airport_id: 10, arrival_airport_id: 1, flight_duration: 300, flight_date: '2022-02-18'},
])