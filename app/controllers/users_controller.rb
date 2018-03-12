class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.all
  end
end
