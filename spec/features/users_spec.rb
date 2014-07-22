require 'rails_helper'

feature 'List all Users' do

  # scenario 'Index page displays User' do
  #   user = create(:user)
  #   visit users_path
  #   expect(page).to have_content('Users')
  # end

  scenario 'allows someone to create a new user' do
    user = build(:user)
    visit new_user_registration_path
    fill_in 'Email', with: user.email
    fill_in('Password', with: user.password, :match => :prefer_exact)
    fill_in 'Password confirmation', with: user.password

    click_button 'Sign Up'
    expect(page).to have_content('Welcome')
  end

end