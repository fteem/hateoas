class AuthorsController < ApplicationController
  def index
    render json: Author.all, include: 'articles'
  end

end
