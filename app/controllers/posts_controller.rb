class PostsController < ApplicationController
  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    return unless @post.save

    redirect_to posts_url
  end

  private

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:post)
  end
end
