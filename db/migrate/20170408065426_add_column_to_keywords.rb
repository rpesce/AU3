class AddColumnToKeywords < ActiveRecord::Migration[5.0]
  def change
    add_column :keywords, :user_id, :integer
  end
end
