json.array!(@books) do |book|
  json.extract! book, :id, :title, :image_url, :author, :keyword, :description, :price
  json.url book_url(book, format: :json)
end
