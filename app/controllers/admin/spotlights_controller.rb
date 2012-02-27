class Admin::ListingsController < ApplicationController
  def new
    @title = "New Spotlight"
    @spotlight = Spotlight.new
    
    @city = City.where(:name => params[:city_id].capitalize).first;
    render :layout => "admin"
  end
  
  def create
    @spotlight = Listing.new(params[:spotlight])
    @spotlight.save
    render :layout => "admin"
  end
  
  def edit
  end

end
