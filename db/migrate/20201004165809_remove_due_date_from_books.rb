class RemoveDueDateFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :due_date
  end
end
