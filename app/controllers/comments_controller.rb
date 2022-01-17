class CommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    comment = post.comments.create!(comment_params)
    CommentsMailer.submitted(comment).deliver_later
    redirect_to post
  end


  private

  def comment_params
    params.fetch(:comment).permit(:content)
  end
end