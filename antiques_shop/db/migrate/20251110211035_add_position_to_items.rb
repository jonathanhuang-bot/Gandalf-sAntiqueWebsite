class AddPositionToItems < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :position, :integer
  end
end
