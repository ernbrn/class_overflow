require 'rails_helper'

RSpec.describe Answer, :type => :model do
  let(:answer) {subject}

  before { expect(answer).not_to be_valid }

  it 'validates the presence of response' do
    expect(answer.errors).to have_key(:response)
  end
end
