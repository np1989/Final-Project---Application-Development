class AddPictureToTours < ActiveRecord::Migration
  def change
    add_column :tours, :picture, :string
  end
end
