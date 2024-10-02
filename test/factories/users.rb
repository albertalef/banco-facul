require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
  factory :brand do
    name { Faker::Business.credit_card_type }
  end
end

FactoryBot.define do
  factory :category do
    name { Faker::Lorem.word }
    benefits { Faker::Lorem.word }
  end

  factory :card_status do
    name { Faker::Lorem.word }
  end

  factory :fraud_status do
    name { Faker::Lorem.word }
  end

  factory :bill_status do
    name { Faker::Lorem.word }
  end

  factory :transaction_status do
    name { Faker::Lorem.word }
  end

  factory :dispute_status do
    name { Faker::Lorem.word }
  end

  factory :card do
    user { association :user }
    brand { association :brand }
    category { association :category }
    card_status { association :card_status }
    number { Faker::Business.credit_card_number }
    valid_at { Faker::Business.credit_card_expiry_date }
    cvv { rand(100..999) }
    credit_limit { rand(0.0..999_999_999.99) }
    tax { rand(0.01..0.2) }
  end
end

FactoryBot.define do
  factory :alert do
    description { Faker::Lorem.paragraph }
  end
end

FactoryBot.define do
  factory :bill do
    transient do
      ramdom_total_amount { rand(0.0..999_999_999.99) }
      bill_status_ids { [''] }
    end

    bill_status { association :bill_status }
    total_amount { ramdom_total_amount }
    paid_amount { rand(0.0..ramdom_total_amount) }
    paid_at { Date.today }
    due_at { Date.tomorrow }
  end
end

FactoryBot.define do
  factory :complaint do
    user { association :user }
    bill_status { association :bill_status }
    description { Faker::Lorem.paragraph }
  end
end

FactoryBot.define do
  factory :supplier do
    address { association :address }
    name { Faker::Company.name }
    cnpj { Faker::Company.brazilian_company_number }
    category { Faker::Company.department }
  end
end

FactoryBot.define do
  factory :fraud do
    fraud_status { association :fraud_status }
    description { Faker::Lorem.paragraph }
    detected_at { Time.zone.now }
  end
end

FactoryBot.define do
  factory :parcel do
    bill_status { association :bill_status }
    bill { association :bill }
    amount { rand(0.0..999_999_999.99) }
    due_at { Date.tomorrow }
    number { rand(1..12) }
  end
end

FactoryBot.define do
  factory :dispute do
    dispute_status { association :dispute_status }
    description { Faker::Lorem.paragraph }
  end
end

FactoryBot.define do
  factory :transaction do
    supplier { association :supplier }
    transaction_status { association :transaction_status }
    fraud { association :fraud }
    dispute { association :dispute }
    bill { association :bill }

    value { rand(0.0..999_999_999.99) }
    description { Faker::Lorem.paragraph }
  end
end
