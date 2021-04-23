# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Itinerary.destroy_all
Passenger.destroy_all
Flight.destroy_all
Airline.destroy_all

@murican = Airline.create(name: "Murican Airlines")
@murican_flight1 = @murican.flights.create(number: "1023", date: "04/01/2025", departure_city: "Mexico City", arrival_city: "New York City")
@flight1_passenger1 = @murican_flight1.passengers.create(name: "Bob", age: 99)
@flight1_passenger2 = @murican_flight1.passengers.create(name: "Bobette", age: 25)
@flight1_passenger3 = @murican_flight1.passengers.create(name: "Rob", age: 12)

@murican_flight2 = @murican.flights.create(number: "9000", date: "04/01/2025", departure_city: "Los Angeles", arrival_city: "San Francisco")
@flight2_passenger1 = @murican_flight2.passengers.create(name: "Zob", age: 45)
@flight2_passenger2 = @murican_flight2.passengers.create(name: "Zobette", age: 13)
@flight2_passenger3 = @murican_flight2.passengers.create(name: "Pob", age: 17)
