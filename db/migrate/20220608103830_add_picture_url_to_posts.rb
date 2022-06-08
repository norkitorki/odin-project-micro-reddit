class AddPictureUrlToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :picture_url, :string
  end
end
