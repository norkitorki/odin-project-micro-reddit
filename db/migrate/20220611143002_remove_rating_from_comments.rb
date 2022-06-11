class RemoveRatingFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :rating, :integer
  end
end
