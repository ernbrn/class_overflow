require 'rails_helper'

RSpec.describe Question, :type => :model do
  #makes a new question and saves it
  let(:question) {subject}

  before { expect(question).not_to be_valid }

  it 'validates the presence of title' do
    expect(question.errors).to have_key(:title)
  end

  it 'validates the presence of content' do
    expect(question.errors).to have_key(:content)
  end

  it 'validates the presence of inquirer' do
    expect(question.errors).to have_key(:inquirer)
  end
end
