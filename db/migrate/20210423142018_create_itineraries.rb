class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.references :flight, foreign_key: true
      t.references :passenger, foreign_key: true
    end
  end
end
