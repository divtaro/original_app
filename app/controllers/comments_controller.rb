class CommentsController < ApplicationController
  def create
    # Comment.create(comment_params)             //ActionCable導入により削除
    # redirect_to post_path(params[:post_id])    //ActionCable導入により削除

    @comment = Comment.new(comment_params)
    if @comment.save
      @post = Post.find(params[:post_id])
      CommentChannel.broadcast_to @post, { comment: @comment, user: @comment.user }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end