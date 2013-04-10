class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).includes(:comments).all
  end

  def show
    @post = Post.includes(:comments, user: :comments).find(params[:id])
  end

  def new
    @post = Post.new
    @post.comments.build
  end

  def create
    # REV: you shouldn't ever set a value in the params hash
    # to another value.  you're just trying to pull values out
    # of the params hash.
    params[:post][:comments_attributes]['0'][:user_id] = current_user.id
    #fail
    @post = current_user.posts.build(params[:post])
    # @post = Post.create(params[:post])
    if @post.save!
      redirect_to posts_url
    else
      render :new
    end
  end

end
