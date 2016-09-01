class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :review_source
      t.integer :review_score
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
