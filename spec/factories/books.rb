FactoryBot.define do
  factory :book do
    titulo { FFaker::Lorem.word }
    published_at { FFaker::Time.datetime }
    author { create(:author) }
  end
end
