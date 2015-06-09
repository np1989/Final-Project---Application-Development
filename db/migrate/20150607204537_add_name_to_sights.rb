class AddNameToSights < ActiveRecord::Migration
  def change
    add_column :sights, :name, :string
  end
end
