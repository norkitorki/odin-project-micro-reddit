class Post < ApplicationRecord
  has_one :post_asset , dependent: :destroy
  has_one :rating, as: :rateable, dependent: :destroy

  has_many :posts
  has_many :comments

  belongs_to :user

  delegate :post_url, :image_url, to: :post_asset
  delegate :update_rating, :format_rating, to: :rating

  validates_associated :comments

  validates :title, presence: true

  after_create do
    create_post_asset
    create_rating
  end
end
