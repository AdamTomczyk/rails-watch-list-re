class AddReviewToLists < ActiveRecord::Migration[6.1]
  def change
     create_table :reviews do |t|
      t.references :list, null: false, foreign_key: true
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
