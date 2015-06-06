class CreateTourGuides < ActiveRecord::Migration
  def change
    create_table :tour_guides do |t|
      t.string :country_location
      t.integer :user_id
      t.string :usertype
      t.string :first_name
      t.string :last_name
      t.string :city_location
      t.string :picture
      t.string :description

      t.timestamps

    end
  end
end
