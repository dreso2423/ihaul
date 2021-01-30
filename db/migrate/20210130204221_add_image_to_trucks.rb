class AddImageToTrucks < ActiveRecord::Migration[6.0]
  def change
    add_column :trucks, :image, :string
  end
end
