class AddImageForFlat < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :image, :integer
  end
end
