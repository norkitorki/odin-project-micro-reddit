class AddIndexToParentCommentId < ActiveRecord::Migration[7.0]
  def change
    add_index :comments, :parent_comment_id
  end
end
