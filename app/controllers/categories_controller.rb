class CategoriesController < ApplicationController
  def show
    @city     = City.where(:name => params[:city_id].capitalize).first 
    @listings = Category.where(:name => params[:id].capitalize).first.listings.page(params[:page])
    if request.xhr?
      render :layout => nil
    else
      render :layout => 'mynotes'
    end
  end
end