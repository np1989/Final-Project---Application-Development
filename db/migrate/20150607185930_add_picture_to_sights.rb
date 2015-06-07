class AddPictureToSights < ActiveRecord::Migration
  def change
    add_column :sights, :picture, :string
  end
end
