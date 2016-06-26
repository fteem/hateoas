class ArticlesController < ApplicationController

  def show
    article = Article.find_by(author_id: params[:author_id], id: params[:id])
    render json: article
  end
end
