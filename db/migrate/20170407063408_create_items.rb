class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
