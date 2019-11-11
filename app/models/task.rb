class Task < ApplicationRecord
  validates :title, presence: true

  has_many :taggings
  has_many :tags, through: :taggings

  enum category: [ :home, :work, :entertainment, :learn, :other ]
  enum priority: [ :low, :middle, :high ]
  enum status: [ :pending, :processing, :completed ]
end
