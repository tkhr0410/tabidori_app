class MicropostsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end
  
  def destroy
  end
  
  private
    def micropost_params
      params.require(:micropost).permit(:content, :picture)
    end
end