class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :caption
      t.text :description
      t.float :mrp
      t.float :discount
      t.string :category
      t.boolean :featured
      t.integer :stock
      t.string :batch_details
      t.string :tags
      t.float :weight
      t.float :height
      t.float :length
      t.float :width
      t.string :type_of_book
      t.string :isbn
      t.string :publisher
      t.integer :edition
      t.string :year_of_publishing
      t.string :google_book_link
      t.string :author
      t.string :book_rating

      t.timestamps null: false
    end
  end
end
