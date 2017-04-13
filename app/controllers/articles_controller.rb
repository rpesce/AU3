class ArticlesController < ApplicationController
	before_action :set_article, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

	def index
		@articles = Article.all
	end

	def show
	end

	def new
		@article = Article.new
	end

	def edit
	end

	def create
		@article = Article.new(article_params)
		@article.user = current_user
		if @article.save
			flash[:notice] = 'You shared your article!'
			redirect_to articles_path
		else
			render :new			
		end
	end

	def update
		if @article.update(article_params)
			flash[:notice] = 'Updated successfully'
			redirect_to articles_path
		else
			render :edit
		end	
	end

	def destroy
		@article.destroy
		flash[:notice] = 'Article successfully removed'
		redirect_to articles_path
	end

	def upvote
		@article.upvote_by current_user
		redirect_to :back #Use JavaScript later to refresh

	end

	def downvote
		@article.downvote_by current_user
		redirect_to :back #Use JavaScript later to refresh
	end

private 

	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:link_source, :title, :description, :image_link, keyword_ids: [])
	end

end
