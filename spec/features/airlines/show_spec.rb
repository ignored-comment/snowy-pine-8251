require 'rails_helper'

RSpec.describe "Airlines show page", type: :feature do
  before :each do
    @murican = Airline.create(name: "Murican Airlines")
    @murican_flight1 = @murican.flights.create(number: "1023", date: "04/01/2025", departure_city: "Mexico City", arrival_city: "New York City")
    @flight1_passenger1 = @murican_flight1.passengers.create(name: "Bob", age: 99)
    @flight1_passenger2 = @murican_flight1.passengers.create(name: "Bobette", age: 25)
    @flight1_passenger3 = @murican_flight1.passengers.create(name: "Rob", age: 12)

    @murican_flight2 = @murican.flights.create(number: "9000", date: "04/01/2025", departure_city: "Los Angeles", arrival_city: "San Francisco")
    @flight2_passenger1 = @murican_flight2.passengers.create(name: "Zob", age: 45)
    @flight2_passenger2 = @murican_flight2.passengers.create(name: "Zobette", age: 13)
    @flight2_passenger3 = @murican_flight2.passengers.create(name: "Pob", age: 17)
  end

  describe "when I visit an airline's show page" do
    it 'shows me a list of passengers that have flights on that airline' do
      visit "/airlines/#{@murican.id}"

    end
  end
end
