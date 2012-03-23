class City < ActiveRecord::Base
  has_many :listings
  has_many :events
  has_many :neighborhoods
  has_and_belongs_to_many :spotlights
end
