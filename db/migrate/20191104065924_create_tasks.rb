class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :category 
      t.text :description
      t.integer :priority
      t.integer :status
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
