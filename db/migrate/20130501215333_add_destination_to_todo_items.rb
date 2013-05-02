class AddDestinationToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :destination_id, :integer
  end
end
