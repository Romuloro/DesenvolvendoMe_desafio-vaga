FactoryBot.define do
  factory :part do
    name { FFaker::Lorem.word }
    descricao { FFaker::Lorem.sentence }
    part_number { "#{FFaker::Bank.card_number}" }
    supplier { create(:supplier) }
  end
end
