class CreateTourSights < ActiveRecord::Migration
  def change
    create_table :tour_sights do |t|
      t.integer :tour_id
      t.integer :sight_id

      t.timestamps

    end
  end
end
