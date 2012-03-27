class ArticlesController < ApplicationController
  def index
    
  end
  
  def show
    if params[:id].to_i != 0
      @article = Article.find(params[:id])
    else
      @article = Article.where(:title => params[:id].sub("-", " ")).first
    end
    @title = @article.title
  end
      
end
