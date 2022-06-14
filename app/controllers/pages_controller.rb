class PagesController < ApplicationController
  def home
  end

  def ee
    # this intentionally causes a 500 because I haven't implemented this yet so I'll just
    # pretend it broke or something
    0 / 0
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
    @object = params[:object].to_i
    case(@object)
    when 1
      @image_path = "gpl.png"
    when 2
      @image_path = "drm.png"
    when 3
      @image_path = "bible.jpg"
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
