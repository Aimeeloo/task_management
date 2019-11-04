class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :type
      t.text :description
      t.string :address
      t.boolean :all_day
      t.datetime :start_at
      t.datetime :end_at
      t.integer :status

      t.timestamps
    end
  end
end
