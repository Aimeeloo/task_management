class Task < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings

  enum priority: { '普通': 0, '有點趕': 1, '緊急事件': 2 }
  enum status: { '尚未完成': 0, '進行中': 1, '已結束': 2 }
end
