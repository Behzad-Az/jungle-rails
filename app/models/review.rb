class Review < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :product, required: true

  validates :rating, presence: true
end
