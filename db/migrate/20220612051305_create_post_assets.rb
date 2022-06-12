class CreatePostAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :post_assets do |t|
      t.string :post_url
      t.string :image_url
      t.references :post, null: false, foreign_key: true
    end
  end
end
