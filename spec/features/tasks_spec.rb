require 'rails_helper'

RSpec.feature "TaskRspecs", type: :feature do
  describe "新增任務" do

    it '新增任務' do
      task = Task.new

      expect(task).to be_a Task
    end

    it "沒有標題就無法儲存" do
      task = Task.create(title: nil)

      expect(task.save).to be false
    end

    it '新增任務時，預設值: 優先順序為low、狀態為pending' do
      task = Task.new

      expect(task.priority).to eq 'low'
      expect(task.status).to eq 'pending'
    end

  end
end
