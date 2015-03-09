class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :link
      t.text :note
      t.integer :shelf_id

      t.timestamps null: false
    end
  end
end
