json.array!(@book_users) do |book_user|
  json.extract! book_user, :id
  json.url book_user_url(book_user, format: :json)
end
