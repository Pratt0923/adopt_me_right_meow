require 'rails_helper'


feature "viewing pages", type: :feature do


  def make_user
    User.create! email: "user@example.com", password: "hunter2"
  end

  def log_in user=nil
    user ||= make_user

    visit "/"
    click_on "Sign In"
    within "#new_user" do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"
    end
  end

  it "can look at pages without login" do
    visit "/"

    expect(page).to have_content "Log In"

    click_on "About Us"
    expect(page).to have_content "Hodor"

  end



  it "can look at pages with being logged in" do

    visit "/"
    click_on "About Us"
    expect(page).to have_content "Hodor"
  end
end
