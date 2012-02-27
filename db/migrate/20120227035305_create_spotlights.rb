class CreateSpotlights < ActiveRecord::Migration
  def change
    create_table :spotlights do |t|
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
