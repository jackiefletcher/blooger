class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comments_params)
    if @comment.save
      flash[:notice] = "Comment added"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

private
  def comments_params
    params.require(:comment).permit(:text)
  end
end
