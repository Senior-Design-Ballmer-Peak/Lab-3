# app/controllers/comments_controller.rb

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to root_path
  end

  def index
    @comments = Comment.all
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment)
  end
end

