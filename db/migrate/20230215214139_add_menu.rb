class AddMenu < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.belongs_to :location
      t.timestamps
    end
  end
end
