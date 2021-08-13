class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }

  validates :movie, presence: true
  # validates :movie, format: { without: /\s/ }
  validates :list, presence: true
  validates_uniqueness_of :movie, :scope => [:list]

  has_one_attached :photo
end
