class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment_indents = @post.comments.map { |c| comment_indent(c) }
  end

  private

  def comment_indent(comment)
    parent_id = comment.parent_comment_id
    return 0 unless parent_id

    30 + comment_indent(Comment.find(parent_id))
  end
end
