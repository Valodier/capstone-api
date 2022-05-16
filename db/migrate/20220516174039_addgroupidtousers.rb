class Addgroupidtousers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :group_id, :integer, default: nil 
  end
end
