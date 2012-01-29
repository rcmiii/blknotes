class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :blurb
      t.text :blurb_short
      t.string :image
      t.integer :start_date
      t.integer :end_date
      t.float :price
      t.string :sponsored
      t.string :address1
      t.string :address2
      t.string :phone
      t.integer :zip
      t.integer :city_id
      t.integer :neighborhood_id
      t.boolean :weekly_event
      t.text :su_review
      t.boolean :active

      t.timestamps
    end
  end
end
