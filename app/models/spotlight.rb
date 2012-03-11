class Spotlight < ActiveRecord::Base
  has_and_belongs_to_many :cities
  has_attached_file :image, :styles => { :main => "500x400>"}
end
