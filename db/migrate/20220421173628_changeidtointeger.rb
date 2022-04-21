class Changeidtointeger < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :user_id
    add_column :tasks, :user_id, :integer
    remove_column :tasks, :room_id
    add_column :tasks, :room_id, :integer
  end
end
