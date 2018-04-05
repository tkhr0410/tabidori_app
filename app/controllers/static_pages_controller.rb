class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.all
    end
  end

  def map
  end

  def contact
  end
  
  def about
  end
end
