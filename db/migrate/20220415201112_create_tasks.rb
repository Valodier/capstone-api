class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :status, default: true
      t.string :user_id
      t.string :room_id

      t.timestamps
    end
  end
end
