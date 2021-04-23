require 'rails_helper'

RSpec.describe 'Flights Index Page', type: :feature do
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

  describe 'when I visit the flights index page' do
    it 'can show me a list of all flight numbers' do
      visit '/flights'

      expect(page).to have_content("1023")
      expect(page).to have_content("9000")
    end

    it 'and next to each flight number I can see the name of the airline of that flight' do
      visit '/flights'

      expect(page).to have_content("Murican Airlines")
    end

    it "and under each flight number I see the names of all that flight's passengers" do
      visit '/flights'

      expect(page).to have_content("Bob")
      expect(page).to have_content("Bobette")
      expect(page).to have_content("Rob")
      expect(page).to have_content("Zob")
      expect(page).to have_content("Zobette")
      expect(page).to have_content("Pob")
    end

    it 'has a button or a link next to each passenger to remove that passenger from the flight' do
      visit '/flights'

      expect(page).to have_button("Remove Passenger")
    end

    it 'when I click the button to remove that passenger I am returned to the index page and I no longer see that passenger' do
      visit '/flights'

      within("#passenger-#{@flight1_passenger1.id}") do
        click_button("Remove Passenger")
      end
    expect(page).not_to have_content("Bob")
    end
  end
end
