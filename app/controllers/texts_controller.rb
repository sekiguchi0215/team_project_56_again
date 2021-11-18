class TextsController < ApplicationController
  PER_PAGE = 12
  
  def index
    @texts = Text.where(genre: Text::RAILS_GENRE_LIST)
    @texts = if params[:genre] == "php"
               Text.where(genre: Text::PHP_GENRE_LIST).page(params[:page]).per(PER_PAGE)
             else
               Text.where(genre: Text::RAILS_GENRE_LIST).page(params[:page]).per(PER_PAGE)
             end
  end

  def show
    @text = Text.find(params[:id])
  end
end
