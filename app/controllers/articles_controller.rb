class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit , :update, :destroy]


  def index
    @pagy,  @articles = pagy(policy_scope(Article).order(created_at: :desc))
  end

  def show
    @related_articles = @article.find_related_tags.order(created_at: :desc).limit(3)
    @related_articles_c = @article.find_related_categs.order(created_at: :desc).limit(3)

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
      @pagy, @articles = pagy(Article.tagged_with(params[:tag]))
      authorize @articles
    else
      @pagy, @articles = pagy(Article.all)
      authorize @articles
    end
    render :index
  end

  def categged
    if params[:categ].present?
      @pagy, @articles = pagy(Article.tagged_with(params[:categ]))
      authorize @articles
    else
      @pagy, @articles = pagy(Article.all)
      authorize @articles
    end
    render :index
  end



  private
  def set_article
    @article = Article.friendly.find(params[:id])
    authorize @article
  end
  def article_params
    params.require(:article).permit(:title, :chapo, :image, :content, :category, :tag, :author, :cover, :user, :ontent, :tag_list, :categ_list, :photos => [])
  end
end
