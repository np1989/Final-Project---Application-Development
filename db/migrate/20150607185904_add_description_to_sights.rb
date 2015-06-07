class AddDescriptionToSights < ActiveRecord::Migration
  def change
    add_column :sights, :description, :string
  end
end
