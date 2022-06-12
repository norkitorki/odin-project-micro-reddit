class RemovePostUrlFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :post_url, :string
  end
end
