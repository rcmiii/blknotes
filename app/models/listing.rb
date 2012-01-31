class Listing < ActiveRecord::Base
  belongs_to :category
  belongs_to :city
  belongs_to :neighborhood
  has_attached_file :image1, :styles => { :main => "225x175>", :listing => "100x100>", :thumb => "50x50>" }
  has_attached_file :image2, :styles => { :main => "225x175>", :listing => "100x100>", :thumb => "50x50>" }
  has_attached_file :image3, :styles => { :main => "225x175>", :listing => "100x100>", :thumb => "50x50>" }
  has_attached_file :image4, :styles => { :main => "225x175>", :listing => "100x100>", :thumb => "50x50>" }
end
