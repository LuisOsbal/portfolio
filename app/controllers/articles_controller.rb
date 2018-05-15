class ArticlesController < ApplicationController
  before_action :retrieve_articles, only: [:index]
  before_action :retrieve_article, only: [:show]

  def index
    @articles
  end

  private

  def retrieve_articles
    @articles = Article.all.order(id: :desc)
  end

  def retrieve_article
    @article = Article.find(params[:id])
  end
end
