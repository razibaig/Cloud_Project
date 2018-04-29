class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :review_text
      t.references :hotel, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
