class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :blurb
      t.integer :main_image
      t.string :listing_image
      t.string :thumbnails
      t.string :images
      t.string :sponsored
      t.string :address1
      t.string :address2
      t.integer :hot
      t.integer :neighborhood
      t.float :rating
      t.string :phone
      t.float :lat
      t.float :long
      t.integer :city
      t.string :hours
      t.text :su_review
      t.boolean :active

      t.timestamps
    end
  end
end
