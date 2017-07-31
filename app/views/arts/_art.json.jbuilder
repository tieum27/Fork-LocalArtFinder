json.extract! art, :id, :genre, :description, :price, :length, :width, :medium, :artist_id, :created_at, :updated_at
json.url art_url(art, format: :json)
