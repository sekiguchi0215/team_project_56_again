module ApplicationHelper
  def max_width
    if controller_name == "texts" && action_name == "show"
      "mw-md"
    elsif devise_controller?
      "mw-sm"
    else
      "mw-xl"
    end
  end

  def movie_title
    if params[:genre] == "php"
      "PHP動画"
    else
      "Ruby/Rails動画"
    end
  end
end
