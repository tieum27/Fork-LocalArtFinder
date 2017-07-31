class Event < ApplicationRecord
  belongs_to :gallery
  belongs_to :artist
  belongs_to :art
end
