require 'rails_helper'

feature 'List all Users' do


  scenario 'allows someone to create a new user' do
    user = build(:user)
    visit new_answer_path
    fill_in 'Name', with: user.name

    click_button 'Submit'
    expect(page).to have_content(user.name)
  end

end