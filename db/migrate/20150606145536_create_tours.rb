class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :tour_name
      t.string :starting_location
      t.integer :price
      t.string :duration
      t.string :description
      t.integer :user_id
      t.string :country_location
      t.string :city_location

      t.timestamps

    end
  end
end
