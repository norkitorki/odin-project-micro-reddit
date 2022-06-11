require_relative 'concerns/rateable'

class Post < ApplicationRecord
  include Rateable

  has_one :rating, as: :rateable, dependent: :destroy

  has_many :posts
  has_many :comments

  belongs_to :user

  validates_associated :comments

  validates :title, presence: true

  after_create { create_rating }
end
