class AddRaitings < ActiveRecord::Migration[7.0]
  def change
    create_table :raitings do |t|
      t.belongs_to :items
      t.belongs_to :users
      t.decimal :raiting, :precision => 2, :scale => 1
      t.timestamps
    end
  end
end
