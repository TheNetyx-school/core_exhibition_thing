class PagesController < ApplicationController
  def home
    redirect_to 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', allow_other_host: true
  end

  def ee
  end

  def tok
  end

  def tok_original
    case(params[:object].to_i)
    when 1
      redirect_to "https://www.gnu.org/licenses/gpl-3.0.txt", allow_other_host: true
    when 2
      redirect_to "https://open.spotify.com/search/thomas%20the%20tank#login", allow_other_host: true
    when 3
      redirect_to "https://www.pinterest.com/pin/proverbs-267-nlt-getwisdomeveryday-for-the-lord-grants-wisdom-from-his-mouth-come-knowledge-and-understanding-he-grants-a-treas--278519558194960747/", allow_other_host: true
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def tok_image
  end
end
