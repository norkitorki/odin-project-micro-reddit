class Comment < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "parent_comment_id", after_remove: :delete_orphaned_comments
  
  belongs_to :user
  belongs_to :post

  validates :author, :body, presence: true
  validates :body, length: { maximum: 1000 }

  private

  def delete_orphaned_comments
    Comment.all.select { |c| c.parent_comment_id && !Comment.find_by(id: c.parent_comment_id) }.delete_all
  end
end
