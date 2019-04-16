class ReviewsController < ApplicationController
before_action :find_post
before_action :find_review, only: [:edit, :update, :destroy]
before_action :authenticate_user!, only: [:new,  :edit]
before_action :has_reviewed, only: [:new]

def new
	@review = Review.new
  @maximum_length = Review.validators_on( :comment ).first.options[:maximum]
end

def create
	@review = Review.new(review_params)
	@review.post_id = @post.id
	@review.user_id = current_user.id




	if @review.save
		redirect_to post_path(@post)

	else
		render 'new'

	end
end

def edit

end

def update
	@review = Review.find(params[:id])

	if @review.update(review_params)
		redirect_to post_path(@post)

	else
		render 'edit'
	end
end

def destroy
	@review.destroy
	redirect_to post_path(@post)

end

private


def has_reviewed
  redirect_to post_path(@post), notice: "You've already written a review for this influencer" if current_user.reviews.exists?(post: @post)
end

def review_params
	params.require(:review).permit(:rating, :comment)
	end


def find_post
	@post = Post.friendly.find(params[:post_id])
end

def find_review
	@review = Review.find(params[:id])

end

end
