class ArticlesController < ApplicationController
    def show
        @article= Article.find params[:id]
    end
    def index
        @articles=Article.all
    end
    def create
        @article=Article.new(params.require(:article).permit(:title, :content))
        #e chưa hiểu chỗ này
        # Cái này để tạo một article mới với title, content được lấy từ  form mà mình điền
        @article.save
        redirect_to article_path(@article)
        #e chưa hiểu chỗ này
        # Cai nay de chuyen trang den show, trong routes co "get "articles/:id" => "artcicles#show", as: :show_article
    end
    def destroy
        @article= Article.find params[:id]
        @article.destroy
        redirect_to :back
    end
    def edit
        @article= Article.find params[:id]
    end
    def update
        @article= Article.find params[:id]
        @article.update_attributes params.require(:article).permit(:title, :content)
        # Cái này để tạo một article thay thế khi mình edit , với title, content được lấy từ  form mà mình điền
        redirect_to article_path(@article)
        # Cai nay de chuyen trang den show, trong routes co "get "articles/:id" => "artcicles#show", as: :show_article
    end
    def new
        @article=Article.new
    end
    def recents
        @recent_article=Article.last(5)
    end
end
