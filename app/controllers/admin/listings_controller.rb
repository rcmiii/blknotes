class Admin::ListingsController < ApplicationController
  def new
    @title = "New Listing"
    @listing = Listing.new
    @neighborhoods = City.find(params[:city_id]).neighborhoods
    @categories = Category.all
    render :layout => "admin"
  end
  
  def create
    @listing = Listing.new(params[:listing])
    address = @listing.address1 + ', ' + @listing.city.name + ', ' + @listing.city.state + ' ' + @listing.zip
    address.sub(' ', '+')
    coords = RestClient.get 'http://maps.googleapis.com/maps/api/geocode/json', {:params => {'address' => address, 'sensor' => 'false'}}
    coords = ActiveSupport::JSON.decode(coords)
    @listing.lat = coords['results'][0]['geometry']['location']['lat']
    @listing.long = coords['results'][0]['geometry']['location']['lng'] 
    @listing.save
  end
  
  def edit
  end

end
