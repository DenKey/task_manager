class CommentsController < ApplicationController
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    head :ok
  end
end
