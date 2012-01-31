class AddImageToListing < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.has_attached_file :image1
      t.has_attached_file :image2
      t.has_attached_file :image3
      t.has_attached_file :image4
    end
  end

  def self.down
    drop_attached_file :listings, :image1
    drop_attached_file :listings, :image2
    drop_attached_file :listings, :image3
    drop_attached_file :listings, :image4
  end
end
