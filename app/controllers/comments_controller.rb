class CommentsController < ApplicationController
  def create
    data = comment_params.merge(article_id: params[:article_id])
    @comment = Comment.create(data)

    redirect_to article_path(@comment.article)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
