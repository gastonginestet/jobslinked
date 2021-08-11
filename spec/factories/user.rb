# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email                   { Faker::Internet.unique.email }
    username                { Faker::Name.unique.name }
    role_id                 { Faker::Number.within(range: 2..3) }
    password                { '123456789' }
  end
end
