class CommentsController < ApplicationController
  before_action :correct_user, only: [:destroy]
  def create
    comment = Comment.create(comment_params)
    redirect_to "/recipes/#{comment.recipe.id}"
  end

  def destroy
    @comment.destroy
    redirect_back(fallback_location: recipe_path)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    unless @comment
      redirect_to root_url
    end
  end
end
