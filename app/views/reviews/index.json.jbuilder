json.array!(@reviews) do |review|
  json.extract! review, :id, :HotelName, :comments
  json.url review_url(review, format: :json)
end
