class AddCityToEvent < ActiveRecord::Migration
  def change
    add_column :spotlights, :city_id, :integer
  end
end
