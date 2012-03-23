class CreateCitiesSpotlights < ActiveRecord::Migration
  def up
    create_table :cities_spotlights do |t|
    t.integer :city_id
    t.integer :spotlight_id
    end
  end

  def down
    drop_table :cities_spotlights
  end
end
