class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all
  end
end
