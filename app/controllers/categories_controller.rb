class CategoriesController < ApplicationController
  # GET /categories or /categories.json
  def index
    @categories = Category.includes(:articles).all
    articles = Article.all
    @most_popular = articles.most_popular
    @articles_by_cat = []
    @categories.each do |x|
      @articles_by_x << recent_article(x)
    end
  end

  # GET /categories/1 or /categories/1.json
  def show
    @category = Category.includes(:articles).find(params[:id])
    recent_related_articles
  end

  private

  def recent_related_articles
    @recent_related_articles ||= @category.articles.ordered_by_most_recent.limit(4)
  end

  def recent_article(category)
    category.articles.ordered_by_most_recent.first
  end
end
