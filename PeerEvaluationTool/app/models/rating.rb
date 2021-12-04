class Rating < ApplicationRecord
  validates :score, presence: true
end
