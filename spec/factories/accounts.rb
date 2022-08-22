FactoryBot.define do
  factory :account do
    account_number { "#{FFaker::Bank.card_number}" }
    supplier { create(:supplier) }
  end
end
