class AuthorsController < ApplicationController
  def index
    render json: Author.all
  end

  def show
    author = Author.find(params[:id])
    render json: author, include: :articles
  end
end
