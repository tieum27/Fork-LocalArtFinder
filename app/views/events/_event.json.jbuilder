json.extract! event, :id, :start, :end, :gallery_id, :artist_id, :art_id, :created_at, :updated_at
json.url event_url(event, format: :json)
