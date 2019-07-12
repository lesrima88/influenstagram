class BlogsController < ApplicationController
  before_action do
   redirect_to root_path , notice: "admins only!" unless current_user && current_user.admin?
 end
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  #before_action :authorize_admin, only: :create
  #before_action :authorize_admin, only: [:create, :edit, :update, :destroy]
  # GET /blogs
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog, notice: 'Blog was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /blogs/1
  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'Blog was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy
    redirect_to blogs_url, notice: 'Blog was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def authorize_admin
     return unless !current_user.admin?
     redirect_to root_path, alert: 'Admins only!'
   end
    # Only allow a trusted parameter "white list" through.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
