class CommentsController < ApplicationController
  def create

    params[:comment][:post_id] = params[:post_id]
    params[:comment][:user_id] = current_user.id
    # REV: this is very confusing, it looks like you didn't finish here.
    if params[:parent_id]
      @parent = Comment.find(params[:parent_id])
      @child = @parent.comments.build(params[:comment])
      @child.save!
      fail
    else
      @comment = Comment.new(params[:comment])
      @comment.save!
    end
    redirect_to post_url(params[:post_id])
  end

  def show
    @comment = Comment.includes(:post).find(params[:id])
    @post = @comment.post
    @parent_id = params[:id]


  end
end
