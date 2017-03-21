class KeywordsController < ApplicationController
	before_action :set_keyword, only: [:show, :edit, :update, :destroy]

	def index
		@keywords = Keyword.all
	end

	def show
	end

	def new
		@keyword = Keyword.new
	end

	def edit
	end

	def create
		@keyword = Keyword.new(keyword_params)
		@keyword.save
		redirect_to @keyword
	end

	def update
		@keyword.update(keyword_params)
	end

	def destroy
		@keyword.destroy
	end

private
	def set_keyword
		@keyword = Keyword.find(params[:id])
	end

	def keyword_params
		params.require(:keyword).permit(:name)
	end
end
