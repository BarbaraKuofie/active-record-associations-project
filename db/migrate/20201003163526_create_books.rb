class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title 
      t.boolean :returned 
      t.string :due_date 
    end 
  end
end
