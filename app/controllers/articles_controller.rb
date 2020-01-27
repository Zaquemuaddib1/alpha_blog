class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	def create 
		#render plain: params[:article].inspect
		@article = Article.new(article_parameters)
		@article.save
		redirect_to articles_show(@article)
	end


	private
		def article_parameters
			params.require(:article).permit(:title, :description)
		end

end