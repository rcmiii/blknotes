class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :subtitle
      t.text :article

      t.timestamps
    end
  end
end
