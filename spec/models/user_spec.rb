require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) {subject}

  before { expect(user).not_to be_valid }

  it 'validates the presence of response' do
    expect(user.errors).to have_key(:name)
  end

end
