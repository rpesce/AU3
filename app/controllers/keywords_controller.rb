class KeywordsController < ApplicationController
	before_action :set_keyword, only: [:show, :edit, :update, :destroy]

	def index
		@keywords = Keyword.all
	end

	def show
		@keyword_articles = @keyword.articles
	end

	def new
		@keyword = Keyword.new
	end

	def edit
	end

	def create
		@keyword = Keyword.new(keyword_params)
		@keyword.user = current_user
		if @keyword.save
			flash[:notice] = 'Keyword added'
			redirect_to @keyword
		else
			render :new
		end
	end

	def update
		if @keyword.update(keyword_params)
			flash[:notice] = 'Keyword updated'
			redirect_to keyword_path(@keyword)
		else
			render :edit
		end
	end

	def destroy
		@keyword.destroy
		flash[:notice] = 'Keyword deleted'
		redirect_to keywords_path
	end

private
	def set_keyword
		@keyword = Keyword.find(params[:id])
	end

	def keyword_params
		params.require(:keyword).permit(:name)
	end
end
