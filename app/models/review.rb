class Review < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_presence_of  :comment , length: { maximum: 1000}
  validates_presence_of :rating
end
