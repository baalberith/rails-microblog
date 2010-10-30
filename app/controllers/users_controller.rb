class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @page_title = "Profile"
  end
  
  def new
    @user = User.new
    @page_title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Wlecome to you're Microblog"
      redirect_to @user
    else
      @page_title = "Sign up"
      render :new
    end
  end
end
