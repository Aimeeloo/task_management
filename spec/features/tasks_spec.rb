require 'rails_helper'

RSpec.feature "TaskRspecs", type: :feature do
  describe "#new" do

    it '#new?' do
      task = Task.new

      expect(task).to be_a Task
    end

    it 'title can not be blank' do
      task = Task.create(title: nil)

      expect(task.save).to be false
    end

    it 'default: {priority: low, status: pending}' do
      task = Task.new

      expect(task.priority).to eq 'low'
      expect(task.status).to eq 'pending'
    end

  end
end
