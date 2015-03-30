class AddLastClickedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :last_clicked, :datetime
  end
end
