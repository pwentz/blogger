class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params["id"])
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    if article.save

      flash.notice = "#{article.title} created!"
      redirect_to articles_path
    else
      flash.notice = "Try entering a different article"
      render :new
    end
  end

  def destroy
    article = Article.find(params["id"]).destroy
    flash.notice = "#{article.title} deleted!"
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params["id"])
  end

  def update
    article = Article.find(params["id"])
    article.update_attributes(article_params)

    flash.notice = "#{article.title} updated!"
    redirect_to article_path(article)
  end
end
