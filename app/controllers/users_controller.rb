class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @page_title = "Profile"
  end
  
  def new
    @page_title = "Sign up"
  end
end
