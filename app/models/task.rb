class Task < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings

  enum category: [ '居家', '工作', '娛樂', '學習', '其他' ]
  enum priority: [ '普通', '有點趕', '緊急事件' ]
  enum status: [ '尚未完成', '進行中', '已結束' ]
end
