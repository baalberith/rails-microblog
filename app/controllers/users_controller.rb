class UsersController < ApplicationController
  def show
    @page_title = "Profile"
    @user = User.find params[:id]
  end
  
  def new
    @page_title = "Sign up"
  end
end
