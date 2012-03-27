class CitiesController < ApplicationController
  def show
    @city = City.where(:name => params[:id].capitalize).first
  end
end
