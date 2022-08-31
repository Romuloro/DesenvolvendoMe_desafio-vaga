FactoryBot.define do
  factory :assembly do
    name { FFaker::Lorem.word }
    parts { create_list(:part, 3)}
    book { create(:book) }
  end
end
