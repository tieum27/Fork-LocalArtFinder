json.extract! gallery, :id, :name, :website, :phone, :opening, :closing, :street, :city, :state, :zipcode, :artist_id, :art_id, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
