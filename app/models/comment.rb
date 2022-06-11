require_relative 'concerns/rateable'

class Comment < ApplicationRecord
  has_one :rating, as: :rateable, dependent: :destroy

  has_many :comments, class_name: "Comment", foreign_key: "parent_comment_id", before_remove: :delete_sub_comments
  
  belongs_to :user
  belongs_to :post

  delegate :update_rating, :format_rating, to: :rating

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
