class Post < ApplicationRecord
  has_many :posts
  has_many :comments

  belongs_to :user

  validates_associated :comments

  validates :title, :body, presence: true
end
