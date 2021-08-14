class Bookmark < ApplicationRecord
  has_one_attached :photo
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }

  validates :movie, presence: true
  # validates :movie, format: { without: /\s/ }
  validates :list, presence: true
  validates_uniqueness_of :movie, :scope => [:list]
end
