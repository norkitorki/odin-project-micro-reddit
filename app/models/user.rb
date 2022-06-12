class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments
  
  validates_associated :posts
  validates_associated :comments

  validates :username, :password, :birthdate, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 8 }
end
