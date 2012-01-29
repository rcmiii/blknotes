class AddZipToListings < ActiveRecord::Migration
  def change
    add_column :listings, :zip, :integer
    add_column :listings, :category_id, :integer
    add_column :listings, :blurb_short, :text
    rename_column :listings, :city, :city_id
    rename_column :listings, :neighborhood, :neighborhood_id
  end
end
