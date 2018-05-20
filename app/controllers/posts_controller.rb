class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "saved!"
      redirect_to root_path
    else
      flash.now[:alert] = @post.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :authority, :image, :category_ids => [])
  end

 

end
