class AddItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.belongs_to :menu
      t.timestamps
    end
  end
end
