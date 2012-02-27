class AddImageToSpotlights < ActiveRecord::Migration
  def self.up
    change_table :spotlights do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :spotlights, :image
  end
end
