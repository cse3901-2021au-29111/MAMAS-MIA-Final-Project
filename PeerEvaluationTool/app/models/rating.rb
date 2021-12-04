class Rating < ApplicationRecord
  validates :score, presence: true
  validates :comment, presence: true
end
