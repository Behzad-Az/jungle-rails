class ReviewsController < ApplicationController
  before_action :authorize

  def create
    product = Product.find(params[:product_id])
    rp = review_params
    rp[:user_id] = current_user.id
    review = product.reviews.new(rp)
    review.save!
    redirect_to product
  end

  def review_params
    params.require(:review).permit(:rating, :description)
  end

end
