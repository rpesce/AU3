class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :link_source
      t.string :title
      t.text :description
      t.string :image_link

      t.timestamps
    end
  end
end
