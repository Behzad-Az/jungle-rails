class ProductRating < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :product_id

  validates :user, :product, :rating, presence: true
end
