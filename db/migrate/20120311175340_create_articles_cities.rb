class CreateArticlesCities < ActiveRecord::Migration
  def up
    create_table :articles_cities do |t|
    t.integer :city_id
    t.integer :article_id
    end
  end

  def down
    drop_table :articles_cities
  end
end
