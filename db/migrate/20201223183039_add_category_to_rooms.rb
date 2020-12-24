class AddCategoryToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :category, :string
  end
end
