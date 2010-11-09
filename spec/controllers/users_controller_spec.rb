require 'spec_helper'

describe UsersController do
  render_views
  
  before(:each) do
    @user = User.create(:name => "Example User", :email => "user@example.com",
      :password => "foobar", :password_confirmation => "foobar")
  end

  describe "GET 'new'" do

    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "Sign up")
    end
    
  end
  
  it "should include the user's name" do
    get :show, :id => @user
    response.should have_selector("h1", :content => @user.name)
  end

end
