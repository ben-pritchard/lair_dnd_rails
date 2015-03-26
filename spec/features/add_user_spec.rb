require "rails_helper"

describe "the add a new user process" do
  it "goes from root to the create user page" do
    visit root_path
    click_on "Sign up"
    expect(page).to have_content "Add yourself"
  end

  it "creates a new user account" do
    visit new_user_registration_path
    fill_in "Username", :with => "Ben"
    fill_in "Email", :with => "ben@ben.com"
    fill_in "Password", :with => "Benjamin"
    fill_in "Password confirmation", :with => "Benjamin"
    click_on "signup-btn"
    expect(page).to have_content "ben@ben.com"
  end
end
