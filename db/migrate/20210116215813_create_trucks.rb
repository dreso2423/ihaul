class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :description
      t.string :size
      t.integer :price
      t.string :make
      t.string :model
      t.string :color
      t.references :owner, index: true, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
