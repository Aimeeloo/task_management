class Task < ApplicationRecord
  validates :title, presence: true

  has_many :taggings
  has_many :tags, through: :taggings

  enum category: { home: 0, work: 1, entertainment: 2, learn: 3, other: 4 }
  enum priority: { low: 0, middle: 1, high: 2 }
  enum status: { pending: 0, processing: 1, completed: 2 }
end
