class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      @comments = Comment.all
      respond_to do |format|
        format.turbo_stream
      end
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :page)
  end

  def show
    @page = controller_name
  end
end
