# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: 'User' do
    sequence(:name) { |n| "user#{n}" }
    email { Faker::Internet.email }
    password { 'password' }
    association :organization
  end
end
