class Admin::ArticlesController < ApplicationController
  def index
    @title       = "All Articles"
    if params[:city_id].nil?
      @articles = Article.all;
    else
      city         = City.where(:name => params[:city_id].capitalize).first
      @articles  = city.articles;
    end
    render :layout => "admin"
  end
  
  def new
    @title     = "New Article"
    @article = Article.new
    
    @city = City.all;
    render :layout => "admin"
  end
  
  def create
    @article = Article.new(params[:article])
    if (params[:city_id] == '0')
      City.all.each do |city|
        @article.cities << city;
      end
    else
      @article.cities << City.find(params[:city_id]);
    end
    @article.save
    render :layout => "admin"
  end
  
  def edit
  end

end
