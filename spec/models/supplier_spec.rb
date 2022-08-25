require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it 'valid supplier' do
    supplier = build(:supplier)
    expect(supplier).to be_valid
  end
end
