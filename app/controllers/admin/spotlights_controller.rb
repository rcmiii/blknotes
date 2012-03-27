class Admin::SpotlightsController < ApplicationController
  def index
    @title       = "All City Spotlights"
    if params[:city_id].nil?
      @spotlights = Spotlight.all;
    else
      city         = City.where(:name => params[:city_id].capitalize).first
      @spotlights  = city.spotlights;
    end
    render :layout => "admin"
  end
  
  def new
    @title     = "New Spotlight"
    @spotlight = Spotlight.new
    
    @city = City.all;
    render :layout => "admin"
  end
  
  def create
    @spotlight = Spotlight.new(params[:spotlight])
    if (params[:city_id] == '0')
      City.all.each do |city|
        @spotlight.cities << city;
      end
    else
      @spotlight.cities << City.find(params[:city_id]);
    end
    @spotlight.save
    render :layout => "admin"
  end
  
  def edit
  end

end
