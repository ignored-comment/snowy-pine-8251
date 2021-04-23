require 'rails_helper'

RSpec.describe Flight, type: :model do
  it {should belong_to :airline}
  it {should have_many :itineraries}
  it {should have_many(:passengers).through(:itineraries)}
end
