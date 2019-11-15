class AddColumnDefaultInTask < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :category, :integer, default: 0
    change_column :tasks, :priority, :integer, default: 0
    change_column :tasks, :status, :integer, default: 0
  end
end
