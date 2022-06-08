class RenamePostUrlColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :url, :post_url
  end
end
