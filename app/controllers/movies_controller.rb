class MoviesController < ApplicationController
  def index
    @movies = if params[:genre] == 5
                Movie.where(genre: Movie::PHP_GENRE_LIST)
              else
                Movie.where(genre: Movie::RAILS_GENRE_LIST)
              end
  end
end
