class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :rating
      t.text :body
      t.belongs_to :book

      t.timestamps
    end
    add_index :reviews, :book_id
  end
end
