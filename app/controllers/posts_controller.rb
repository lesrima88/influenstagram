class PostsController < ApplicationController

  before_action :authenticate_user!, only: [:new,  :edit]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

def new
  @post = current_user.posts.build
end

def index
  #@posts = Post.all
  params[:tag] ? @posts = Post.tagged_with(params[:tag]) : @posts = Post.all

end

def search
  if params[:search].blank?
     redirect_to(root_path, alert: "Empty field!") and return
   else
     @parameter = params[:search].downcase
     @results = Post.all.where("lower(instagram_username) LIKE :search", search: @parameter)

   end
end

def test
@posts = Post.all
end


def create
  @post = current_user.posts.build(post_params)
  if @post.save
redirect_to @post, notice: 'Influencer was successfuly posted!'
else
  render :new
end
end

def show
  @reviews =  @post.reviews.order("created_at DESC")

		if @post.reviews.blank?
			@average_review = 0
		else
			@average_review = @post.reviews.average(:rating).round(2)
		end

end

def edit
end

def update
  if @post.update(post_params)
    redirect_to @post, notice: 'Your listing was successfuly updated'
  else
    render "edit"
  end

end




def destroy
  @post.destroy
redirect_to root_path, notice: 'Your listing was successfully removed.'
end

private

def post_params
    params.require(:post).permit(:instagram_username, :url, :tag_list, :tag, { tag_ids: [] }, :tag_ids)
  end

	def set_post
		@post = Post.friendly.find(params[:id]) rescue nil
	end

end
