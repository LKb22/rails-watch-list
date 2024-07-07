class Review < ApplicationRecord
  belongs_to :list
  validates :comment, :rating, presence: true
  validates :rating, numericality: { only_float: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
