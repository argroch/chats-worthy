class AddCatidToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :category_id, :integer
  end
end
