class AddReadToBooks < ActiveRecord::Migration
  def change
    add_column :books, :read, :string
  end
end
