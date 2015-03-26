require 'rails_helper'

describe "the login process" do
  it "allows a created user to log in" do
    FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in "Username", :with => "lee"
    fill_in "Password", :with => "jorgensen"
    click_on "login-btn"
  end
end
