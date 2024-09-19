FactoryBot.define do
  factory :address do
    street { Faker::Address.street_name }
    number { Faker::Address.building_number }
    city { Faker::Address.city }
    state { Faker::Address.state }
    neighborhood { Faker::Address.community }
    complement { Faker::Address.full_address }
    zipcode { Faker::Address.zip.gsub(/\D/, '') }
  end
end
