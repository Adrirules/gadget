class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit , :update, :destroy]


  def index
    @articles = policy_scope(Article)
  end

  def show
    @related_articles = @article.find_related_tags
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    authorize @article
    @article.save
    redirect_to article_path(@article)
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to root_path, status: :see_other
  end

  def tagged
    if params[:tag].present?
      @articles = Article.tagged_with(params[:tag])
      authorize @articles
    else
      @articles = Article.all
    end
    render :index
  end

  private
  def set_article
    @article = Article.find(params[:id])
    authorize @article
  end
  def article_params
    params.require(:article).permit(:title, :chapo, :image, :content, :category, :tag, :author, :photo, :cover, :user, :ontent, tag_list: [])
  end
end
