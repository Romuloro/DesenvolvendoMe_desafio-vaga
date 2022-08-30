require 'rails_helper'

RSpec.describe Part, type: :model do
  it 'valid account' do
    part = build(:part)
    expect(part).to be_valid
  end
end
