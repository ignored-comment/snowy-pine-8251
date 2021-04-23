require 'rails_helper'

RSpec.describe Passenger, type: :model do
  it {should have_many :itineraries}
  it {should have_many(:flights).through(:itineraries)}
end
