FactoryBot.define do
  factory :author do
    name { FFaker::Lorem.word }
  end
end
