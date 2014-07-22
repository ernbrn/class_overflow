require 'rails_helper'

feature 'List all answers ' do
  scenario 'when only one answer exists' do
    answer = create(:answer)
    visit answers_path
    expect(page).to have_content('Response')
    expect(page).to have_content('Responder')

  end



end