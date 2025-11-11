class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:notice] = "コメントを投稿しました。"
      redirect_to board_path(comment.board)
    else
      flash[:comment] = "コメントの投稿に失敗しました。"
      flash[:error_messages] = comment.errors.full_messages
      redirect_back fallback_location: board_path(comment.board)
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    flash[:notice] = "コメントを削除しました。"
    redirect_to board_path(comment.board)
  end

  private

  def comment_params
    params.require(:comment).permit(:board_id, :name, :comment)
  end
end
