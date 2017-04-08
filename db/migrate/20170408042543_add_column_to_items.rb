class AddColumnToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :list_id, :integer
  end
end
