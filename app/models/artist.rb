class Artist < ApplicationRecord
  validates :user, presence: true
  resourcify
end
