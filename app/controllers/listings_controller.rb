class ListingsController < ApplicationController
  def index
    @listings = Listing.order('created_at').page(params[:page])
  end
  
  def show
    
  end
end
