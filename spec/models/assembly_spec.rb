require 'rails_helper'

RSpec.describe Assembly, type: :model do
  it 'valid author' do
    assembly = build(:assembly)
    expect(assembly).to be_valid
  end
end
