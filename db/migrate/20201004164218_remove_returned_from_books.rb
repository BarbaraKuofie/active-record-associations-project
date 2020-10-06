class RemoveReturnedFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :returned 
  end
end
