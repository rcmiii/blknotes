class Event < ActiveRecord::Base
  belongs_to :category
  belongs_to :city
  belongs_to :neightborhood
  has_attached_file :image, :styles => { :main => "225x175>", :listing => "100x100>", :thumb => "50x50>" }
end
