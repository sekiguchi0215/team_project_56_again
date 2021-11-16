class MoviesController < ApplicationController
  def index
    @movies = if params[:genre] == "php"
                Movie.includes(:watch_progresses).where(genre: Movie::PHP_GENRE_LIST)
              else
                Movie.includes(:watch_progresses).where(genre: Movie::RAILS_GENRE_LIST)
              end
  end
end
