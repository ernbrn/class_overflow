require 'rails_helper'

feature 'List all answers ' do
  scenario 'when only one answer exists' do
    answer = create(:answer)
    visit answers_path
    expect(page).to have_content('Response')
    expect(page).to have_content('Responder')
  end

  scenario 'allows user to create a new answer' do
    answer = build(:answer)
    visit new_answer_path
    fill_in 'Responder', with: answer.responder
    fill_in 'Response', with: answer.response

    click_button 'Submit'
    expect(page).to have_content(answer.responder)
    expect(page).to have_content(answer.response)
  end



end