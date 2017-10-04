class ArticlesController < ApplicationController
  def index
    @articles = current_user.articles
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    article_params = params.require(:article).permit(:title, :body)
    @article = current_user.articles.create(article_params)
    redirect_to @article
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    article_params = params.require(:article).permit(:title, :body)
    @article.update(article_params)
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to　articles_path
  end
  
  private

  def current_user
    @current_user ||= User.find(1)
  end
end
