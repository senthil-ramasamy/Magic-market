json.array!(@books) do |book|
  json.extract! book, :id, :name, :caption, :description, :mrp, :discount, :category, :featured, :stock, :batch_details, :tags, :weight, :height, :length, :width, :type_of_book, :isbn, :publisher, :edition, :year_of_publishing, :google_book_link, :author, :book_rating
  json.url book_url(book, format: :json)
end
