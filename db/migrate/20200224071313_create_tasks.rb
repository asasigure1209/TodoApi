class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :order
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
