class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :value, default: 0
      t.references :rateable, polymorphic: true
    end
  end
end
