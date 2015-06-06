class CreateSights < ActiveRecord::Migration
  def change
    create_table :sights do |t|
      t.string :country_location
      t.string :city_location
      t.string :sight_name
      t.integer :user_id

      t.timestamps

    end
  end
end
