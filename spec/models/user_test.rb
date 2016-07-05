require 'rails_helper'

feature "clicking on cats", type: :feature do
  it 'can be clicked on to view more about cat' do
    visit "/"
    click_on "See More"
    expect(page).to have_content "cat details" #subject to change
  end

  it 'can be clicked on to purchase cat' do
    visit "/"
    click_on "purchase"
    expect(page).to have_content "purchase" #subject to change
  end
end
