require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'valid author' do
    author = build(:author)
    expect(author).to be_valid
  end
end
