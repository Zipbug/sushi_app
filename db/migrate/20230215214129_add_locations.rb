class AddLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :address
      t.belongs_to :users
      t.timestamps
    end
  end
end
