class RemoveRatingFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :rating, :integer
  end
end
