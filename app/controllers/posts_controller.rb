class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
    @post=Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
  end


  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def find_post
      @post = Post.find(params[:id])
    end

end
