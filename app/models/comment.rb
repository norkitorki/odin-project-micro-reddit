class Comment < ApplicationRecord
  has_many :comments, class_name: "Comment", foreign_key: "parent_comment_id"
  
  belongs_to :user
  belongs_to :post

  validates :author, :body, presence: true
  validates :body, length: { maximum: 1000 }
end
