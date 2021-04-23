require 'rails_helper'

RSpec.describe 'Flights Index Page', type: :feature do
  before :each do
    @murican = Airline.create(name: "Murican-Airlines")
    @murican_flight1 = @murican.flights.create(number: "1023", date: "04/01/2025", departure_city: "Mexico City", arrival_city: "New York City")
    @flight1_passenger1 = @murican_flight1.passengers.create(name: "Bob", age: 99)
    @flight1_passenger2 = @murican_flight1.passengers.create(name: "Bobette", age: 25)
    @flight1_passenger3 = @murican_flight1.passengers.create(name: "Rob", age: 12)

    @murican_flight2 = @murican.flights.create(number: "1023", date: "04/01/2025", departure_city: "Los Angeles", arrival_city: "San Francisco")
    @flight2_passenger1 = @murican_flight2.passengers.create(name: "Zob", age: 45)
    @flight2_passenger2 = @murican_flight2.passengers.create(name: "Zobette", age: 13)
    @flight2_passenger3 = @murican_flight2.passengers.create(name: "Pob", age: 17)
  end

  describe 'when I visit the flights index page' do
    it 'can show me a list of all flight numbers' do
    end

    it 'and next to each flight number I can see the name of the airline of that flight' do
    end

    it "and under each flight number I see the names of all that flight's passengers" do
    end
  end
end
