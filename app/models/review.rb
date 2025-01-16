class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true, length: { minimum: 5, maximum: 500 }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
