require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'valid Book' do
    book = build(:book)
    expect(book).to be_valid
  end
end
