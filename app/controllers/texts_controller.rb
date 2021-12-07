class TextsController < ApplicationController
  PER_PAGE = 12

  def index
    @texts = Text.where(genre: Text.genre_list(params[:genre]))
  end

  def show
    @text = Text.find(params[:id])
  end
end
