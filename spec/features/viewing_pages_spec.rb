require 'rails_helper'


feature "viewing pages", type: :feature do
  def make_user
    User.create! email: "user@example.com", password: "hunter2"
  end

  def log_in user=nil
    user ||= make_user

    visit "/"
    click_on "Log In"
    within "#new_user" do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"
    end
  end


  it "can look at pages without login" do
    visit "/"

    expect(page).to have_content "Log In"
    # expect(page).to have_content "bubbles"

    click_on "About Us"
    expect(page).to have_content "Hodor"

    click_on "Contact Us"
    expect(page).to have_content "867-5309"

    click_on "Subscribe"
    expect(page).to have_content "Subscribe to updates"

  end

  it "can look at pages with being logged in" do

    log_in

    visit "/"


    # expect(page).to have_content "bubbles"

    click_on "About Us"
    expect(page).to have_content "Hodor"

    click_on "Contact Us"
    expect(page).to have_content "867-5309"

    click_on "Subscribe"
    expect(page).to have_content "Subscribe to updates"

    # find_button('Sign out').click

  end


  it "can look at pages with being Admin" do

    log_in

    visit "/"

    # click_on "Admin"
    # expect(page).to have_content "Import"
    # expect(page).to have_content "Add Cat"

  end

end
