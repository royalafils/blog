class ArticleController < ApplicationController

  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to action: "list"
  end
  
  def list
    # @ = variable globale
    @articles = Article.all
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :text)
  end
  
end

