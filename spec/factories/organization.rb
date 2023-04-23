# frozen_string_literal: true

FactoryBot.define do
  factory :organization, class: 'Organization' do
    name { Faker::Company.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    address { Faker::Address.full_address }
  end
end
