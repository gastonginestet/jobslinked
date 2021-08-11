# frozen_string_literal: true

FactoryBot.define do
  factory :job_alert do
    title { Faker::Company.name }
    description { Faker::Company.catch_phrase }
  end
end
