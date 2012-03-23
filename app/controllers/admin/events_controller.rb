class Admin::EventsController < ApplicationController
  def new
    @title = "New Event"
    @listing = Event.new
    
    @city = City.where(:name => params[:city_id].capitalize).first;
    @categories = Category.all
    render :layout => "admin"
  end
  
  def create
    @event = Event.new(params[:event])
    this_city = City.find(@event.city_id)
    address = @event.address1 + ', ' + this_city.name + ', ' + this_city.state + ' ' + @event.zip.to_s
    address.sub(' ', '+')
    coords = RestClient.get 'http://maps.googleapis.com/maps/api/geocode/json', {:params => {'address' => address, 'sensor' => 'false'}}
    coords = ActiveSupport::JSON.decode(coords)
    @event.lat = coords['results'][0]['geometry']['location']['lat']
    @event.long = coords['results'][0]['geometry']['location']['lng']
    @event.start_date = Time.parse(@event.start_date).to_i
    @event.end_date = Time.parse(@event.end_date).to_i
    @event.save
    render :layout => "admin"
  end
  
  def edit
  end

end
