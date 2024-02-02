class CreateSafaris < ActiveRecord::Migration[7.1]
  def change
    create_table :safaris do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.float :price, null:false
      t.text :img, null:false

      t.timestamps
    end
    add_index :safaris, :name, unique: true
  end
end
