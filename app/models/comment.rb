class Comment < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "parent_comment_id", before_remove: :delete_sub_comments
  
  belongs_to :user
  belongs_to :post

  validates :author, :body, presence: true
  validates :body, length: { maximum: 1000 }

  before_destroy :delete_sub_comments

  private

  def delete_sub_comments
    comments = self.comments.to_a
    until comments.empty?
      c = comments.shift.delete
      comments += c.comments.to_a
    end
  end
end
