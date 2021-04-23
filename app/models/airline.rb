class Airline < ApplicationRecord
  has_many :flights

  def passengers_unique_adults
    .joins(:flights, {passengers: :flights})
    .where('passengers.age >= ?', 18)
    .distinct
  end
end
