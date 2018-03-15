class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if signed_in?
  end

  def map
  end

  def contact
  end
  
  def about
  end
end
