class PagesController < ApplicationController
  def home
    redirect_to 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', allow_other_host: true
  end

  def ee
  end

  def tok
  end
end
