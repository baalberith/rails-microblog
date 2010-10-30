class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @page_title = 'Profile'
  end
  
  def new
    @user = User.new
    @page_title = 'Sign up'
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Wlecome to you're Microblog, #{@user.name}!"
      redirect_to @user
    else
      @page_title = 'Sign up'
      render :new
    end
  end
end
