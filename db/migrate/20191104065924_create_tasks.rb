class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :type
      t.text :description
      t.integer :priority
      t.integer :status
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
