class Neighborhood < ActiveRecord::Base
  has_many :listings
  has_many :events
  belongs_to :city
end
